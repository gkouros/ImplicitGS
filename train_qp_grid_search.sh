#!/bin/bash
set -e

# train
python train.py --eval -s data/mip360/room          -m logs/qp_grid_search/room_qp --num_channels 15 --plane_size 2500 --port 6557 --contractor
python train.py --eval -s data/nerf_synthetic/drums -m logs/qp_grid_search/drums_qp --num_channels 15 --plane_size 2500 --bbox_scale 1.0 --mlp_dim 128 --port 6558

# eval and compress with grid search for qp params
python distortion_curve.py -m logs/qp_grid_search/room_qp --grid_search
python distortion_curve.py -m logs/qp_grid_search/drums_qp --grid_search
