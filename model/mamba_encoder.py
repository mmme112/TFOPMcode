
import math
import torch
import torch.nn as nn

try:
    from mamba_ssm import Mamba
except Exception:
    from mamba_ssm.torch import Mamba

__all__ = ["MambaBlock", "MambaEncoder", "PairwiseDistHead", "CategoricalHead"]


class MambaBlock(nn.Module):

    def __init__(self, d_model: int, d_state: int = 16, d_conv: int = 4,
                 expand: int = 2, dropout: float = 0.0):
        super().__init__()
        self.norm = nn.LayerNorm(d_model)
        self.mamba = Mamba(d_model=d_model, d_state=d_state, d_conv=d_conv, expand=expand)
        self.drop = nn.Dropout(dropout)

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        # x: [B, L, d]
        h = self.mamba(self.norm(x))
        return x + self.drop(h)


class MambaEncoder(nn.Module):

    def __init__(self, e_layers: int, d_model: int, dropout: float = 0.0,
                 d_state: int = 16, d_conv: int = 4, expand: int = 2):
        super().__init__()
        self.blocks = nn.ModuleList([
            MambaBlock(d_model, d_state=d_state, d_conv=d_conv, expand=expand, dropout=dropout)
            for _ in range(e_layers)
        ])

    def forward(self, x: torch.Tensor):
        # x: [B, L, d]
        feats = []
        for blk in self.blocks:
            x = blk(x)
            feats.append(x)   # [B, L, d]
        return feats


class PairwiseDistHead(nn.Module):

    def __init__(self, d_model: int, n_heads: int = 1, add_eye: bool = True, dropout: float = 0.05):
        super().__init__()
        assert d_model % n_heads == 0, ""
        self.n_heads = n_heads
        self.add_eye = add_eye
        self.d_head = d_model // n_heads

        self.q_proj = nn.Linear(d_model, d_model, bias=True)
        self.k_proj = nn.Linear(d_model, d_model, bias=True)
        self.drop = nn.Dropout(dropout)

    def forward(self, h: torch.Tensor) -> torch.Tensor:
        B, L, D = h.shape
        H, d_h = self.n_heads, self.d_head
        q = self.q_proj(h).view(B, L, H, d_h).permute(0, 2, 1, 3)  # [B,H,L,d_h]
        k = self.k_proj(h).view(B, L, H, d_h).permute(0, 2, 1, 3)  # [B,H,L,d_h]
        logits = torch.einsum("bhld,bhsd->bhls", q, k) / math.sqrt(d_h)  # [B,H,L,L]
        attn = torch.softmax(logits, dim=-1)
        if self.add_eye and L > 0:
            eye = torch.eye(L, device=attn.device, dtype=attn.dtype)[None, None]  # [1,1,L,L]
            attn = attn + eye
            attn = attn / attn.sum(dim=-1, keepdim=True).clamp_min(1e-6)
        return self.drop(attn)


class CategoricalHead(nn.Module):

    def __init__(self, d_model: int, n_heads: int = 1, K: int = 64, dropout: float = 0.05):
        super().__init__()
        assert d_model % n_heads == 0, ""
        self.n_heads = n_heads
        self.K = K
        self.proj = nn.Linear(d_model, n_heads * K, bias=True)
        self.drop = nn.Dropout(dropout)

    def forward(self, h: torch.Tensor) -> torch.Tensor:
        # h: [B, L, d_model]
        B, L, D = h.shape
        H, K = self.n_heads, self.K
        logits = self.proj(h).view(B, L, H, K).permute(0, 2, 1, 3)  # [B,H,L,K]
        probs = torch.softmax(logits, dim=-1)
        return self.drop(probs)
