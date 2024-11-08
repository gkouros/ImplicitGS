#!/bin/bash
set -e
python distortion_curve.py -m logs/$1/bonsai_final  
python distortion_curve.py -m logs/$1/counter_final  
python distortion_curve.py -m logs/$1/kitchen_final  
python distortion_curve.py -m logs/$1/room_final  
python distortion_curve.py -m logs/$1/stump_final   --raw_points  
python distortion_curve.py -m logs/$1/bicycle_final  
python distortion_curve.py -m logs/$1/garden_final  
python distortion_curve.py -m logs/$1/treehill_final  
python distortion_curve.py -m logs/$1/flowers_final  
