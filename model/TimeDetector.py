import torch
import torch.nn as nn
import torch.nn.functional as F
from .attn import DAC_structure, AttentionLayer
from .embed import DataEmbedding
from .RevIN import RevIN
import warnings
import numpy as np

# ===== Optional: Mamba as pre-attention encoder =====
try:
    from mamba_ssm import Mamba  # official implementation
except Exception:
    Mamba = None


class ResidualMambaLayer(nn.Module):
    def __init__(self, d_model, d_state=16, expand=2, d_conv=4, dropout=0.0):
        super().__init__()
        self.enabled = Mamba is not None
        self.norm = nn.LayerNorm(d_model)
        self.drop = nn.Dropout(dropout)
        self.core = Mamba(d_model, d_state=d_state, d_conv=d_conv, expand=expand) if self.enabled else nn.Identity()

    def forward(self, x):
        if not self.enabled:
            return x
        y = self.core(self.norm(x))
        return x + self.drop(y)


class MambaStack(nn.Module):
    def __init__(self, d_model, n_layers=2, d_state=16, expand=2, d_conv=4, dropout=0.0):
        super().__init__()
        self.enabled = Mamba is not None
        self.layers = nn.ModuleList([
            ResidualMambaLayer(d_model, d_state=d_state, expand=expand, d_conv=d_conv, dropout=dropout)
            for _ in range(n_layers)
        ])

    def forward(self, x):
        if not self.enabled:
            return x
        for layer in self.layers:
            x = layer(x)
        return x


class Encoder(nn.Module):

    def __init__(self, attn_layers, norm_layer=None):
        super(Encoder, self).__init__()
        self.attn_layers = nn.ModuleList(attn_layers)
        self.norm = norm_layer

    def forward(self, q_patch_size, q_patch_num, k_patch_size, k_patch_num, x_ori, patch_index, attn_mask=None):
        series_list = []
        prior_list = []
        for attn_layer in self.attn_layers:
            series, prior = attn_layer(
                q_patch_size, q_patch_num, k_patch_size, k_patch_num,
                x_ori, patch_index, attn_mask=attn_mask
            )
            series_list.append(series)  # [B,H,Lq,Lk]
            prior_list.append(prior)
        return series_list, prior_list


class TimeDetector(nn.Module):

    def __init__(self, win_size, enc_in, c_out, n_heads=1, d_model=128, e_layers=2,
                 patch_size=[3, 5, 7], channel=55, dropout=0.0, activation='gelu',
                 output_attention=True, lamb=6400,
                 use_mamba=True, mamba_layers=6, mamba_d_state=16, mamba_expand=2, mamba_d_conv=4, mamba_dropout=0.1,
                 mask_ratio=0.15): # 新增 mask_ratio 参数
        super(TimeDetector, self).__init__()
        self.output_attention = output_attention
        self.patch_size = patch_size
        self.channel = channel
        self.win_size = win_size
        self.temperature = 50
        self.enc_in = enc_in
        self.mask_ratio = mask_ratio


        self.embed_size_time = DataEmbedding(enc_in, d_model, dropout)

        self.embed_num_time  = DataEmbedding(enc_in, d_model, dropout)

        self.embed_size_freq = DataEmbedding(enc_in * 3, d_model, dropout)
        self.embed_num_freq  = DataEmbedding(enc_in * 3, d_model, dropout)


        self.use_mamba = use_mamba and (Mamba is not None)

        self.mamba_size = MambaStack(
            d_model, n_layers=mamba_layers, d_state=mamba_d_state,
            expand=mamba_expand, d_conv=mamba_d_conv, dropout=mamba_dropout
        )

        self.mamba_num = MambaStack(
            d_model, n_layers=mamba_layers, d_state=mamba_d_state,
            expand=mamba_expand, d_conv=mamba_d_conv, dropout=mamba_dropout
        )


        self.embedding_window_size = DataEmbedding(enc_in, d_model, dropout)


        self.encoder = Encoder(
            [
                AttentionLayer(
                    DAC_structure(
                        win_size, patch_size, channel,
                        mask_flag=False,
                        attention_dropout=dropout,
                        output_attention=output_attention
                    ),
                    d_model, patch_size, channel, n_heads, win_size
                )
                for _ in range(e_layers)
            ],
            norm_layer=torch.nn.LayerNorm(d_model)
        )

        self.projection = nn.Linear(d_model, c_out, bias=True)

    @staticmethod
    def my_kl_loss(p, q):
        res = p * (torch.log(p + 1e-4) - torch.log(q + 1e-4))
        return torch.mean(torch.sum(res, dim=-1), dim=1)

    def apply_mask(self, x):

        if self.training: 
            # 训练时：随机 Mask，迫使 Prior 分支做 "完形填空"
            mask = torch.rand_like(x) < self.mask_ratio
            x_masked = x.clone()
            x_masked[mask] = 0 
            return x_masked
        else:

            return x

    @staticmethod
    def _to_freq_mag_phase(x: torch.Tensor) -> torch.Tensor:

        B, L, M = x.shape
        w = torch.hann_window(L, periodic=True, device=x.device, dtype=x.dtype)
        w = w.view(1, L, 1)
        xw = x * w 

        X = torch.fft.fft(xw, dim=1)

        mag = torch.abs(X)
        mag_log = torch.log1p(mag)

        phase = torch.angle(X)
        phase_cos = torch.cos(phase)
        phase_sin = torch.sin(phase)

        xf = torch.cat([mag_log, phase_cos, phase_sin], dim=2)
        return xf

    def forward(self, x):

        B, L, M = x.shape


        revin_layer = RevIN(num_features=M)
        x_norm = revin_layer(x, 'norm')             # [B,L,M]

        x_ori = self.embedding_window_size(x_norm)  # [B,L,d_model]


        x_freq = self._to_freq_mag_phase(x_norm)    # [B,L,3M]

        x_time_series = x_norm
        x_freq_series = x_freq

        x_time_prior = self.apply_mask(x_norm)
        x_freq_prior = self.apply_mask(x_freq)

        t_size = self.embed_size_time(x_time_series) 
        f_size = self.embed_size_freq(x_freq_series) 
        
        if self.use_mamba:
            t_size = self.mamba_size(t_size) 
            f_size = self.mamba_size(f_size) 

        t_num = self.embed_num_time(x_time_prior)    
        f_num = self.embed_num_freq(x_freq_prior)    

        if self.use_mamba:
            t_num = self.mamba_num(t_num)    
            f_num = self.mamba_num(f_num)    

        series_tf, prior_tf = self.encoder(
            q_patch_size=t_size, q_patch_num=t_num,
            k_patch_size=f_size, k_patch_num=f_num,
            x_ori=x_ori, patch_index=0, attn_mask=None
        )

        series_ft, prior_ft = self.encoder(
            q_patch_size=f_size, q_patch_num=f_num,
            k_patch_size=t_size, k_patch_num=t_num,
            x_ori=x_ori, patch_index=0, attn_mask=None
        )

        series, prior = self._concat_two(series_tf, series_ft, prior_tf, prior_ft)
        return series, prior

    @staticmethod
    def _concat_two(series_A, series_B, prior_A, prior_B):
        series, prior = [], []
        for i in range(len(series_A)):
            series.append(torch.cat((series_A[i], series_B[i]), dim=3))
            prior.append(torch.cat((prior_A[i],  prior_B[i]),  dim=3))
        return series, prior

    def train_vai_loss(self, series, prior):

        series_loss = 0.0
        prior_loss = 0.0
        for u in range(len(prior)):
            denom = torch.unsqueeze(torch.sum(prior[u], dim=-1), dim=-1).repeat(
                1, 1, 1, self.win_size * 2
            )
            p_norm = (prior[u] / denom).detach() 
            
            series_loss += (
                torch.mean(self.my_kl_loss(series[u], p_norm)) +
                torch.mean(self.my_kl_loss(p_norm, series[u]))
            )
            
            prior_loss  += (
                torch.mean(self.my_kl_loss(prior[u] / denom, series[u].detach())) +
                torch.mean(self.my_kl_loss(series[u].detach(), prior[u] / denom))
            )
        
        series_loss /= len(prior)
        prior_loss  /= len(prior)

        return prior_loss - series_loss

    def test_loss(self, series, prior):

        series_loss = 0.0
        prior_loss = 0.0
        for u in range(len(prior)):
            denom = torch.unsqueeze(torch.sum(prior[u], dim=-1), dim=-1).repeat(
                1, 1, 1, self.win_size * 2
            )
            p_norm = (prior[u] / denom)
            if u == 0:
                series_loss = self.my_kl_loss(series[u], p_norm.detach()) * self.temperature
                prior_loss  = self.my_kl_loss(p_norm, series[u].detach()) * self.temperature
            else:
                series_loss += self.my_kl_loss(series[u], p_norm.detach()) * self.temperature
                prior_loss  += self.my_kl_loss(p_norm, series[u].detach()) * self.temperature
        return - series_loss - prior_loss