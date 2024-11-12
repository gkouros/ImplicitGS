#!/bin/bash
set -e

python train.py --eval -s data/nerf_synthetic/lego -m logs/lr_per_output --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --use_attribute_level_lr
python render.py --eval --iteration 50000 -s data/nerf_synthetic/lego -m logs/lr_per_output --quiet --skip_train
python metrics.py -m logs/lr_per_output

