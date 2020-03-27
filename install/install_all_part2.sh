#!/bin/bash

chmod +x install_opencv_part2.sh
chmod +x install_openvino.sh
chmod +x download_models.sh

sh install_opencv_part2.sh
sh install_openvino.sh
sh download_models.sh
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection