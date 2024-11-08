#!/bin/bash
set -e
python distortion_curve.py -m logs/$1/chair_final --raw_points  
python distortion_curve.py -m logs/$1/drums_final  
python distortion_curve.py -m logs/$1/ficus_final --raw_points  
python distortion_curve.py -m logs/$1/hotdog_final --raw_points  
python distortion_curve.py -m logs/$1/lego_final --raw_points  
python distortion_curve.py -m logs/$1/materials_final --raw_points  
python distortion_curve.py -m logs/$1/mic_final    
python distortion_curve.py -m logs/$1/ship_final  
