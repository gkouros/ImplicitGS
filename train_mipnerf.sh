#!/bin/bash
set -e
# python train.py --eval -s data/mip360/bonsai   -m logs/$1/bonsai_final  --num_channels 21 --plane_size 2600   --port 6557    --contractor  --densify_grad_threshold 0.00013 --bbox_scale 0.5 --no_downsample 
# python train.py --eval -s data/mip360/counter  -m logs/$1/counter_final  --num_channels 15 --plane_size 2500   --port 6557    --contractor  --no_downsample --densify_grad_threshold 0.00015 --bbox_scale 0.3
python train.py --eval -s data/mip360/kitchen  -m logs/$1/kitchen_final  --num_channels 18 --plane_size 2800   --port 6557    --contractor  --no_downsample --densify_grad_threshold 0.00014 --bbox_scale 0.4
python train.py --eval -s data/mip360/room     -m logs/$1/room_final  --num_channels 15 --plane_size 2500   --port 6557    --contractor  
python train.py --eval -s data/mip360/stump    -m logs/$1/stump_final  --num_channels 15 --plane_size 2500   --port 6557    --contractor  
python train.py --eval -s data/mip360/bicycle  -m logs/$1/bicycle_final  --num_channels 15 --plane_size 2500   --port 6557    --contractor  
python train.py --eval -s data/mip360/garden   -m logs/$1/garden_final  --num_channels 15 --plane_size 2500   --port 6557    --contractor  
python train.py --eval -s data/mip360/treehill -m logs/$1/treehill_final  --num_channels 15 --plane_size 2500   --port 6557    --contractor  --bbox_scale 0.3
python train.py --eval -s data/mip360/flowers  -m logs/$1/flowers_final  --num_channels 15 --plane_size 2500   --port 6557    --contractor  --bbox_scale 0.3
