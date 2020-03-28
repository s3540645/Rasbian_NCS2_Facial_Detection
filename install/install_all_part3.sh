#!/bin/bash

echo "================================"
echo "install_all_part3 start"
echo "================================"

echo "--------------------------------"
echo "chmod for sh"
echo "--------------------------------"

chmod +x install_openvino_part2.sh
chmod +x download_models.sh

echo "--------------------------------"
echo "run opencv, openvino and download models"
echo "--------------------------------"

./install_openvino_part2.sh
./download_models.sh
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection

echo "================================"
echo "install_all_part3 finished"
echo "================================"