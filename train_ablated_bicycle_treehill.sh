#!/bin/bash
set -e

# no multilevel
#python train.py --eval --no_multilevel -s data/mip360/bicycle  -m logs/ablation/bicycle_m  --num_channels 15 --plane_size 2500 --port 6557 --contractor  
#python train.py --eval --no_multilevel -s data/mip360/treehill -m logs/ablation/treehill_m --num_channels 15 --plane_size 2500 --port 6557 --contractor --bbox_scale 0.3
python distortion_curve.py -m logs/ablation/bicycle_m
python distortion_curve.py -m logs/ablation/treehill_m

# no spatial regulization
python train.py --eval --no_regularization -s data/mip360/bicycle  -m logs/ablation/bicycle_r  --num_channels 15 --plane_size 2500 --port 6557 --contractor  
python train.py --eval --no_regularization -s data/mip360/treehill -m logs/ablation/treehill_r --num_channels 15 --plane_size 2500 --port 6557 --contractor --bbox_scale 0.3
python distortion_curve.py -m logs/ablation/bicycle_r
python distortion_curve.py -m logs/ablation/treehill_r

# no multilevel and no spatial regularization
python train.py --eval --no_multilevel --no_regularization -s data/mip360/bicycle  -m logs/ablation/bicycle_mr  --num_channels 15 --plane_size 2500 --port 6557 --contractor  
python train.py --eval --no_multilevel --no_regularization -s data/mip360/treehill -m logs/ablation/treehill_mr --num_channels 15 --plane_size 2500 --port 6557 --contractor --bbox_scale 0.3
python distortion_curve.py -m logs/ablation/bicycle_mr
python distortion_curve.py -m logs/ablation/treehill_mr

# full
python train.py --eval -s data/mip360/bicycle  -m logs/ablation/bicycle_full  --num_channels 15 --plane_size 2500 --port 6557 --contractor  
python train.py --eval -s data/mip360/treehill -m logs/ablation/treehill_full --num_channels 15 --plane_size 2500 --port 6557 --contractor --bbox_scale 0.3
python distortion_curve.py -m logs/ablation/bicycle_full
python distortion_curve.py -m logs/ablation/treehill_full
