#!/bin/bash
set -e
python train.py --eval -s data/nerf_synthetic/chair     -m logs/$1/chair_final     --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
python train.py --eval -s data/nerf_synthetic/drums     -m logs/$1/drums_final     --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
python train.py --eval -s data/nerf_synthetic/ficus     -m logs/$1/ficus_final     --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
python train.py --eval -s data/nerf_synthetic/hotdog    -m logs/$1/hotdog_final    --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
python train.py --eval -s data/nerf_synthetic/lego      -m logs/$1/lego_final      --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
python train.py --eval -s data/nerf_synthetic/materials -m logs/$1/materials_final --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
python train.py --eval -s data/nerf_synthetic/mic       -m logs/$1/mic_final       --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
python train.py --eval -s data/nerf_synthetic/ship      -m logs/$1/ship_final      --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558  
