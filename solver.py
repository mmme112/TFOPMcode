import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np
import os
import time
from utils.utils import *
from model.TimeDetector import TimeDetector
from data_factory.data_loader import get_loader_segment
from einops import rearrange
from metrics.metrics import *
import warnings
import matplotlib.pyplot as plt
import copy  # for EMA-Teacher
import seaborn as sns
from sklearn.metrics import confusion_matrix, classification_report, ConfusionMatrixDisplay

warnings.filterwarnings('ignore')

def my_kl_loss(p, q):
    res = p * (torch.log(p + 0.0001) - torch.log(q + 0.0001))
    return torch.mean(torch.sum(res, dim=-1), dim=1)

def adjust_learning_rate(optimizer, epoch, lr_):
    lr_adjust = {epoch: lr_ * (0.5 ** ((epoch - 1) // 1))}
    if epoch in lr_adjust.keys():
        lr = lr_adjust[epoch]
        for param_group in optimizer.param_groups:
            param_group['lr'] = lr

class EarlyStopping:
    def __init__(self, patience=7, verbose=False, dataset_name='', delta=0):
        self.patience = patience
        self.verbose = verbose
        self.counter = 0
        self.best_score = None
        self.best_score2 = None
        self.early_stop = False
        self.val_loss_min = np.inf
        self.val_loss2_min = np.inf
        self.delta = delta
        self.dataset = dataset_name

    def __call__(self, val_loss, val_loss2, model, path):
        score = -val_loss
        score2 = -val_loss2
        if self.best_score is None:
            self.best_score = score
            self.best_score2 = score2
            self.save_checkpoint(val_loss, val_loss2, model, path)
        elif score < self.best_score + self.delta or score2 < self.best_score2 + self.delta:
            self.counter += 1
            if self.counter >= self.patience:
                self.early_stop = True
        else:
            self.best_score = score
            self.best_score2 = score2
            self.save_checkpoint(val_loss, val_loss2, model, path)
            self.counter = 0

    def save_checkpoint(self, val_loss, val_loss2, model, path):
        torch.save(model.state_dict(), os.path.join(path, str(self.dataset) + '_checkpoint.pth'))
        self.val_loss_min = val_loss
        self.val_loss2_min = val_loss2


class Solver(object):
    """
    已集成：EMA-Teacher + 拼接前蒸馏（时/频分别）。
    针对 3 epoch 训练做了短训优化：
      ◦ ema_m=0.99（Teacher 跟得更快）
      ◦ 无预热（第一轮即开始蒸馏）
      ◦ 蒸馏权重按 epoch 线性 ramp：
          time: 0.02 → 0.03
          freq: 0.03 → 0.05
    """
    DEFAULTS = {
        # 自蒸馏开关
        "use_attn_distill": False,
        # EMA 动量与预热（短训友好）
        "ema_m": 0.99,
        "ema_warmup_epochs": 0,
        # 蒸馏权重（拼接前），按 epoch 线性增长区间
        "lambda_att_pre_time_start": 0.02,
        "lambda_att_pre_time_end":   0.03,
        "lambda_att_pre_freq_start": 0.03,
        "lambda_att_pre_freq_end":   0.05,
    }

    def __init__(self, config):

        self.__dict__.update(Solver.DEFAULTS, **config)

        self.train_loader = get_loader_segment(self.index, 'dataset/'+self.data_path, batch_size=self.batch_size, win_size=self.win_size, mode='train', dataset=self.dataset)
        self.vali_loader  = get_loader_segment(self.index, 'dataset/'+self.data_path, batch_size=self.batch_size, win_size=self.win_size, mode='val',   dataset=self.dataset)
        self.test_loader  = get_loader_segment(self.index, 'dataset/'+self.data_path, batch_size=self.batch_size, win_size=self.win_size, mode='test',  dataset=self.dataset)
        self.thre_loader  = get_loader_segment(self.index, 'dataset/'+self.data_path, batch_size=self.batch_size, win_size=self.win_size, mode='thre',  dataset=self.dataset)
        if self.dataset == 'UCR_AUG':
            self.test_original = np.load('dataset/'+self.data_path + "/UCR_AUG_"+str(self.index)+"_train.npy")
        self.build_model()

        self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

        if self.loss_fuc == 'MAE':
            self.criterion = nn.L1Loss()
        elif self.loss_fuc == 'MSE':
            self.criterion = nn.MSELoss()

    def build_model(self):
        self.model = TimeDetector(win_size=self.win_size, enc_in=self.input_c, c_out=self.output_c,
                                  n_heads=self.n_heads, d_model=self.d_model, e_layers=self.e_layers,
                                  patch_size=self.patch_size, channel=self.input_c)

        if torch.cuda.is_available():
            self.model.cuda()

        self.optimizer = torch.optim.Adam(self.model.parameters(), lr=self.lr)

        # 创建 EMA-Teacher（影子模型，仅前向，无梯度）
        self.ema_model = copy.deepcopy(self.model).eval()
        for p in self.ema_model.parameters():
            p.requires_grad_(False)

    # EMA 权重更新（必须在 optimizer.step() 之后调用）
    def _ema_update(self):
        with torch.no_grad():
            msd = self.model.state_dict()
            esd = self.ema_model.state_dict()
            for k in esd.keys():
                if k in msd:
                    esd[k].copy_(esd[k] * self.ema_m + msd[k] * (1.0 - self.ema_m))

    # 拼接前蒸馏损失（分别对齐时域 & 频域注意力图），返回 (loss_time, loss_freq)
    @staticmethod
    def _att_distill_loss_pre(series_s, prior_s, series_t, prior_t):
        loss_time = 0.0
        loss_freq = 0.0
        U = len(series_s)
        for u in range(U):
            T = series_s[u].size(-1) // 2  # = L（最后一维 2L → L+L）
            # time
            loss_time += F.l1_loss(series_s[u][..., :T], series_t[u][..., :T])
            loss_time += F.l1_loss(prior_s[u][...,  :T], prior_t[u][...,  :T])
            # freq
            loss_freq += F.l1_loss(series_s[u][..., T:], series_t[u][..., T:])
            loss_freq += F.l1_loss(prior_s[u][...,  T:], prior_t[u][...,  T:])
        loss_time /= U
        loss_freq /= U
        return loss_time, loss_freq

    def vali(self, vali_loader):
        self.model.eval()
        loss_1 = []
        loss_2 = []
        for i, (input_data, _) in enumerate(vali_loader):
            input = input_data.float().to(self.device)
            series_list, prior_list = self.model(input)
            loss = self.model.train_vai_loss(series_list, prior_list)
            loss_1.append(loss.item())
            loss_2.append(loss.item())
        return np.average(loss_1), np.average(loss_2)

    def train(self):

        time_now = time.time()
        path = self.model_save_path
        if not os.path.exists(path):
            os.makedirs(path)
        early_stopping = EarlyStopping(patience=5, verbose=True, dataset_name=self.data_path)
        train_steps = len(self.train_loader)

        for epoch in range(self.num_epochs):
            iter_count = 0

            epoch_time = time.time()
            self.model.train()
            for i, (input_data, labels) in enumerate(self.train_loader):

                self.optimizer.zero_grad()
                iter_count += 1
                input = input_data.float().to(self.device)

                # ---- Student 前向
                series_s, prior_s = self.model(input)
                loss_core = self.model.train_vai_loss(series_s, prior_s)

                # ---- Teacher 前向（no-grad, eval）
                with torch.no_grad():
                    self.ema_model.eval()
                    series_t, prior_t = self.ema_model(input)

                # ---- 蒸馏（拼接前）：按 epoch 线性 ramp 权重（短训友好）
                if self.use_attn_distill and (epoch + 1) >= self.ema_warmup_epochs:
                    loss_time, loss_freq = Solver._att_distill_loss_pre(series_s, prior_s, series_t, prior_t)
                    # 线性插值权重：从 start → end
                    t = (epoch + 1) / max(1, self.num_epochs)
                    lam_time = self.lambda_att_pre_time_start + \
                               (self.lambda_att_pre_time_end - self.lambda_att_pre_time_start) * t
                    lam_freq = self.lambda_att_pre_freq_start + \
                               (self.lambda_att_pre_freq_end - self.lambda_att_pre_freq_start) * t
                    loss_att = lam_time * loss_time + lam_freq * loss_freq
                else:
                    loss_att = torch.tensor(0.0, device=self.device)

                loss = loss_core + loss_att

                if (i + 1) % 100 == 0:
                    speed = (time.time() - time_now) / iter_count
                    left_time = speed * ((self.num_epochs - epoch) * train_steps - i)
                    print('\tspeed: {:.4f}s/iter; left time: {:.4f}s'.format(speed, left_time))
                    iter_count = 0
                    time_now = time.time()

                loss.backward()
                self.optimizer.step()

                # ---- EMA 跟随（必须在 step 之后）
                self._ema_update()

            vali_loss1, vali_loss2 = self.vali(self.test_loader)

            print("Epoch: {0}, Cost time: {1:.3f}s ".format(epoch + 1, time.time() - epoch_time))
            early_stopping(vali_loss1, vali_loss2, self.model, path)
            if early_stopping.early_stop:
                break
            adjust_learning_rate(self.optimizer, epoch + 1, self.lr)

    def test(self):
        self.model.load_state_dict(
            torch.load(
                os.path.join(str(self.model_save_path), str(self.data_path) + '_checkpoint.pth')))
        self.model.eval()
        # (1) stastic on the train set
        attens_energy = []
        for i, (input_data, labels) in enumerate(self.train_loader):
            input = input_data.float().to(self.device)
            series_list, prior_list = self.model(input)
            trend_loss = self.model.test_loss(series_list, prior_list)
            metric = torch.softmax(trend_loss, dim=-1)
            cri = metric.detach().cpu().numpy()
            attens_energy.append(cri)
        attens_energy = np.concatenate(attens_energy, axis=0).reshape(-1)
        train_energy = np.array(attens_energy)
        del series_list, prior_list

        # (2) find the threshold
        attens_energy = []
        for i, (input_data, labels) in enumerate(self.thre_loader):
            input = input_data.float().to(self.device)
            series_list, prior_list = self.model(input)
            trend_loss = self.model.test_loss(series_list, prior_list)
            metric = torch.softmax(trend_loss, dim=-1)
            cri = metric.detach().cpu().numpy()
            attens_energy.append(cri)

        attens_energy = np.concatenate(attens_energy, axis=0).reshape(-1)
        test_energy = np.array(attens_energy)
        combined_energy = np.concatenate([train_energy, test_energy], axis=0)
        thresh = np.percentile(combined_energy, 100 - self.anormly_ratio)
        print("Threshold :", thresh)
        del series_list, prior_list

        # (3) evaluation on the test set
        test_labels = []
        attens_energy = []
        data = []
        for i, (input_data, labels) in enumerate(self.thre_loader):
            input = input_data.float().to(self.device)
            series_list, prior_list = self.model(input)
            trend_loss = self.model.test_loss(series_list, prior_list)
            metric = torch.softmax(trend_loss, dim=-1)
            cri = metric.detach().cpu().numpy()
            attens_energy.append(cri)
            test_labels.append(labels)
            data.append(input.squeeze(dim=2).detach().cpu().numpy())

        attens_energy = np.concatenate(attens_energy, axis=0).reshape(-1)
        test_labels = np.concatenate(test_labels, axis=0).reshape(-1)
        data = np.concatenate(data, axis=0).reshape(-1)
        test_energy = np.array(attens_energy)
        test_labels = np.array(test_labels)
        data = np.array(data)

        pred = (test_energy > thresh).astype(int)
        gt = test_labels.astype(int)

        matrix = [self.index]
        scores_simple = combine_all_evaluation_scores(pred, gt, test_energy)
        for key, value in scores_simple.items():
            matrix.append(value)
            print('{0:21} : {1:0.4f}'.format(key, value))

        # 连通性修正：在真实异常段内把漏检补 1
        anomaly_state = False
        for i in range(len(gt)):
            if gt[i] == 1 and pred[i] == 1 and not anomaly_state:
                anomaly_state = True
                for j in range(i, 0, -1):
                    if gt[j] == 0:
                        break
                    else:
                        if pred[j] == 0:
                            pred[j] = 1
                for j in range(i, len(gt)):
                    if gt[j] == 0:
                        break
                    else:
                        if pred[j] == 0:
                            pred[j] = 1
            elif gt[i] == 0:
                anomaly_state = False
            if anomaly_state:
                pred[i] = 1

        pred1 = np.array(pred)
        gt = np.array(gt)

        # ==================== 新增混淆矩阵生成代码 ====================
        # 确保结果目录存在
        result_dir = './result'
        if not os.path.exists(result_dir):
            os.makedirs(result_dir)
        
        # 计算混淆矩阵
        cm = confusion_matrix(gt, pred1)
        
        # 设置中文字体（可选）
        plt.rcParams['font.sans-serif'] = ['SimHei']  # 用来正常显示中文标签
        plt.rcParams['axes.unicode_minus'] = False  # 用来正常显示负号
        
        # 创建图形
        fig, ax = plt.subplots(figsize=(8, 6))
        
        # 绘制热力图
        disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=['Normal', 'Anomaly'])
        disp.plot(cmap='Blues', ax=ax, values_format='d')
        
        # 设置标题和标签
        ax.set_title(f'Confusion Matrix - {self.data_path}')
        ax.set_xlabel('Predicted Label')
        ax.set_ylabel('True Label')
        
        # 优化布局并保存图片
        plt.tight_layout()
        
        # 定义图片保存路径
        matrix_save_path = os.path.join(result_dir, f'{self.data_path}_confusion_matrix.png')
        plt.savefig(matrix_save_path, dpi=300, bbox_inches='tight')
        print(f"混淆矩阵图已保存至: {matrix_save_path}")
        
        plt.close()
        
        # 打印混淆矩阵数值和分类报告
        print("\n混淆矩阵:")
        print(cm)
        print("\n详细分类报告:")
        print(classification_report(gt, pred1, target_names=['Normal', 'Anomaly']))
        # ==================== 新增代码结束 ====================

        from sklearn.metrics import precision_recall_fscore_support
        from sklearn.metrics import accuracy_score

        accuracy = accuracy_score(gt, pred1)
        precision, recall, f_score, support = precision_recall_fscore_support(gt, pred1, average='binary')
        print("Accuracy : {:0.4f}, Precision : {:0.4f}, Recall : {:0.4f}, F-score : {:0.4f} ".format(
            accuracy, precision, recall, f_score))

        if self.data_path == 'UCR' or 'UCR_AUG':
            import csv
            if not os.path.exists('result'):
                os.makedirs('result')
            with open('result/'+self.data_path+'.csv', 'a+') as f:
                writer = csv.writer(f)
                writer.writerow(matrix)

        return accuracy, precision, recall, f_score