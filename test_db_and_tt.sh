#!/bin/bash
set -e 
python distortion_curve.py -m logs/$1/train_final --raw_points
python distortion_curve.py -m logs/$1/truck_final 
python distortion_curve.py -m logs/$1/drjohnson_final 
python distortion_curve.py -m logs/$1/playroom_final 

