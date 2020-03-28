#!/bin/bash

echo "================================"
echo "install_all_part2 start"
echo "================================"

echo "--------------------------------"
echo "chmod for sh"
echo "--------------------------------"

chmod +x install_opencv_part2.sh
chmod +x install_openvino_part1.sh

echo "--------------------------------"
echo "run opencv part 2, openvino part 1"
echo "--------------------------------"

./install_opencv_part2.sh
./install_openvino_part1.sh


echo "================================"
echo "install_all_part2 finished"
echo "================================"
