import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np
import math
from math import sqrt
import os
from einops import rearrange, reduce, repeat


class DAC_structure(nn.Module):

    def __init__(self, win_size, patch_size, channel, mask_flag=True, scale=None, attention_dropout=0.05, output_attention=False):
        super(DAC_structure, self).__init__()
        self.scale = scale
        self.mask_flag = mask_flag
        self.output_attention = output_attention
        self.dropout = nn.Dropout(attention_dropout)
        self.window_size = win_size
        self.patch_size = patch_size  # 仅为兼容保留
        self.channel = channel        # 仅为兼容保留

    def representation_learning(self, queries, keys):
        B, Lq, H, E = queries.shape
        _, Lk, _, _ = keys.shape
        scale = self.scale or 1.0 / sqrt(E)

        scores = torch.einsum("blhe,bshe->bhls", queries, keys)  # [B,H,Lq,Lk]
        attn = torch.softmax(scale * scores, dim=-1)             # 行归一化 w.r.t. Lk

        if Lq == Lk:
            eye = torch.eye(Lk, device=attn.device, dtype=attn.dtype).unsqueeze(0).unsqueeze(0)  # [1,1,L,L]
            attn = attn + eye
            denom = attn.sum(dim=-1, keepdim=True).clamp_min(1e-6)
            attn = attn / denom

        series = self.dropout(attn)
        return series

    def forward(self, queries_patch_size, queries_patch_num, keys_patch_size, keys_patch_num, patch_index, attn_mask):

        series_patch_size = self.representation_learning(queries_patch_size, keys_patch_size)
        series_patch_num  = self.representation_learning(queries_patch_num,  keys_patch_num)

        if self.output_attention:
            return series_patch_size, series_patch_num
        else:
            return (None)


class AttentionLayer(nn.Module):

    def __init__(self, attention, d_model, patch_size, channel, n_heads, win_size, d_keys=None, d_values=None):
        super(AttentionLayer, self).__init__()

        d_keys = d_keys or (d_model // n_heads)
        d_values = d_values or (d_model // n_heads)
        self.norm = nn.LayerNorm(d_model)
        self.inner_attention = attention
        self.patch_size = patch_size  # 兼容保留
        self.channel = channel        # 兼容保留
        self.window_size = win_size
        self.n_heads = n_heads

        # 对 Q、K 分别建立投影
        self.q_proj = nn.Linear(d_model, d_keys * n_heads)
        self.k_proj = nn.Linear(d_model, d_keys * n_heads)
        # V/out 目前未使用，保留接口
        self.value_projection = nn.Linear(d_model, d_values * n_heads)
        self.out_projection   = nn.Linear(d_values * n_heads, d_model)

    def forward(self, q_patch_size, q_patch_num, k_patch_size, k_patch_num, x_ori, patch_index, attn_mask):

        Bq, Lq, _ = q_patch_size.shape
        Bk, Lk, _ = k_patch_size.shape
        H = self.n_heads
        assert Bq == Bk, "Batch size mismatch between Q and K"

        # Q/K 投影并 reshape -> [B, L, H, d_h]
        q_size = self.q_proj(q_patch_size).view(Bq, Lq, H, -1)
        k_size = self.k_proj(k_patch_size).view(Bk, Lk, H, -1)

        q_num  = self.q_proj(q_patch_num).view(Bq, Lq, H, -1)
        k_num  = self.k_proj(k_patch_num).view(Bk, Lk, H, -1)

        series, prior = self.inner_attention(
            q_size, q_num,
            k_size, k_num,
            patch_index, attn_mask
        )

        return series, prior
