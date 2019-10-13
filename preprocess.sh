#!/bin/bash -e

./preprocess_captions.sh --ms-coco-dir $1 --split train
./preprocess_captions.sh --ms-coco-dir $1 --split valid

./preprocess_images.sh --ms-coco-dir $1 --split train --num-workers 2
./preprocess_images.sh --ms-coco-dir $1 --split valid --num-workers 2
