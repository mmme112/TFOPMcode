# !/bin/bash

# MSL 数据集（修正输入通道，与数据匹配）
# python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 100 --patch_size 35
# python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 100 --patch_size 35
# # PSM 数据集
# python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 100 --patch_size 135
# python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 100 --patch_size 135

# # SMAP 数据集用
# python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# # SWAT 数据集
# python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
# python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105
# # SMD 数据集
# python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 135 --patch_size 57
# python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 135 --patch_size 57

# # MSL 数据集（修正输入通道，与数据匹配）
# python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
# python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# # SWAT 数据集
# # python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
# python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105

# SMD 数据集
# python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 3 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 3 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57






# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57





# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105










# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57



# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105




# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105










# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135




# # MSL 数据集（修正输入通道，与数据匹配）
# python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
# python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35



# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105





# # MSL 数据集（修正输入通道，与数据匹配）
# python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
# python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35



# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135



# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57


# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105









# # SWAT 数据集
# python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
# python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105











# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105

# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105

# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105

# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105


# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105









# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105

# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105
# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105
# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105
# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105
# PSM 数据集
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset PSM --data_path PSM --input_c 25 --output_c 25 --loss_fuc MSE --win_size 60 --patch_size 135


# MSL 数据集（修正输入通道，与数据匹配）
python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 128 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 128 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35


# SMD 数据集
python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# SMAP 数据集用
python main2.py --anormly_ratio 0.9 --num_epochs 3 --batch_size 256 --mode train --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105
python main2.py --anormly_ratio 0.9 --num_epochs 10 --batch_size 256 --mode test --dataset SMAP --data_path SMAP --input_c 25 --output_c 25 --loss_fuc MSE --patch_size 357 --win_size 105

# SWAT 数据集
python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105





# # SMD 数据集
# python main2.py --anormly_ratio 0.8 --num_epochs 2 --batch_size 256 --mode train --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57
# python main2.py --anormly_ratio 0.8  --num_epochs 10 --batch_size 256 --mode test --dataset SMD --data_path SMD --input_c 38 --output_c 38 --loss_fuc MSE --win_size 105 --patch_size 57

# # SWAT 数据集
# python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
# python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105




# # SWAT 数据集
# python main2.py --anormly_ratio 0.55 --num_epochs 3   --batch_size 256  --mode train --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51  --loss_fuc MSE --patch_size 57 --win_size 105
# python main2.py --anormly_ratio 0.55 --num_epochs 10  --batch_size 256  --mode test  --dataset SWAT  --data_path SWAT  --input_c 51    --output_c 51   --loss_fuc MSE --patch_size 57 --win_size 105

# MSL 数据集（修正输入通道，与数据匹配）
# python main2.py --anormly_ratio 1 --num_epochs 3 --batch_size 256 --mode train --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
# python main2.py --anormly_ratio 1 --num_epochs 10 --batch_size 256 --mode test --dataset MSL --data_path MSL --input_c 55 --output_c 55 --win_size 90 --patch_size 35
