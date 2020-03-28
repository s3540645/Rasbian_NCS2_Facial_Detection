#!/bin/bash

echo "================================"
echo "download_models start"
echo "================================"

echo "--------------------------------"
echo "download models"
echo "--------------------------------"

#download models
mkdir ~/OpenVINO/models
cd ~/OpenVINO/models
wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.bin
wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.xml

echo "================================"
echo "download_models finished"
echo "================================"