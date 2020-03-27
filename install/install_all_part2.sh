#!/bin/bash

echo "================================"
echo "install_all_part2 start"
echo "================================"

echo "--------------------------------"
echo "chmod for sh"
echo "--------------------------------"

chmod +x install_opencv_part2.sh
chmod +x install_openvino.sh
chmod +x download_models.sh

echo "--------------------------------"
echo "run opencv, openvino and download models"
echo "--------------------------------"

./install_opencv_part2.sh
./install_openvino.sh
./download_models.sh
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection

echo "================================"
echo "install_all_part2 finished"
echo "================================"