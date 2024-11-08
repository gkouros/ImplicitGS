#!/bin/bash
set -e
python train.py --eval -s data/db/drjohnson -m  logs/$1/drjohnson_final --num_channels 15 --plane_size 2500 --port 6665 --contractor
python train.py --eval -s data/db/playroom  -m  logs/$1/playroom_final --num_channels 15 --plane_size 2500 --port 6655 --contractor
python train.py --eval -s data/tandt/train  -m  logs/$1/train_final --num_channels 15 --plane_size 2800 --no_downsample --port 6555 --contractor --bbox_scale 0.3
python train.py --eval -s data/tandt/truck  -m  logs/$1/truck_final --num_channels 15 --plane_size 2800 --no_downsample --port 6555 --contractor
