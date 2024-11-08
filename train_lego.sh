#!/bin/bash
set -e

python train.py --eval -s data/nerf_synthetic/lego -m logs/$1/lego_final --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 \
    --disable_net_opacity
python render.py --eval --iteration 50000 -s data/nerf_synthetic/lego -m logs/$1/lego_final --quiet --skip_train
python metrics.py -m logs/$1/lego_final

python train.py --eval -s data/nerf_synthetic/lego -m logs/$1/lego_final --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 \
    --disable_net_rotation
python render.py --eval --iteration 50000 -s data/nerf_synthetic/lego -m logs/$1/lego_final --quiet --skip_train
python metrics.py -m logs/$1/lego_final

python train.py --eval -s data/nerf_synthetic/lego -m logs/$1/lego_final --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 \
    --disable_net_scale
python render.py --eval --iteration 50000 -s data/nerf_synthetic/lego -m logs/$1/lego_final --quiet --skip_train
python metrics.py -m logs/$1/lego_final

python train.py --eval -s data/nerf_synthetic/lego -m logs/$1/lego_final --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 \
    --disable_net_features_dc
python render.py --eval --iteration 50000 -s data/nerf_synthetic/lego -m logs/$1/lego_final --quiet --skip_train
python metrics.py -m logs/$1/lego_final

python train.py --eval -s data/nerf_synthetic/lego -m logs/$1/lego_final --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 \
    --disable_net_features_rest
python render.py --eval --iteration 50000 -s data/nerf_synthetic/lego -m logs/$1/lego_final --quiet --skip_train
python metrics.py -m logs/$1/lego_final