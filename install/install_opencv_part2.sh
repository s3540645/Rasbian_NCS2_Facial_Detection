#!/bin/bash

echo "================================"
echo "install_opencv_part2 start"
echo "================================"

echo "--------------------------------"
echo "symbolic link for python"
echo "--------------------------------"

#symbolic link for python
sudo ln -s /opt/opencv-4.1.0/lib/python2.7/dist-packages/cv2 /usr/lib/python2.7/dist-packages/cv2
sudo ln -s /opt/opencv-4.1.0/lib/python3.7/dist-packages/cv2 /usr/lib/python3/dist-packages/cv2

echo "--------------------------------"
echo "install git"
echo "--------------------------------"

#install git
sudo apt install git

echo "--------------------------------"
echo "OpenCv config for c++"
echo "--------------------------------"

#OpenCv config for c++
git clone https://gist.github.com/sol-prog/ed383474872958081985de733eaf352d opencv_cpp_compile_settings
cd opencv_cpp_compile_settings/
sudo cp -r opencv.pc /usr/lib/arm-linux-gnueabihf/pkgconfig
rm -rf opencv_cpp_compile_settings/
cd ~

echo "--------------------------------"
echo "test OpenCV"
echo "--------------------------------"

#test OpenCV
git clone https://github.com/sol-prog/raspberry-pi-opencv.git
cd raspberry-pi-opencv/tests

#cli C++
g++ cli_cpp_test.cpp -o cli_cpp_test `pkg-config --cflags --libs opencv`
./cli_cpp_test

#gui c++
#g++ gui_cpp_test.cpp -o gui_cpp_test `pkg-config --cflags --libs opencv`
#./gui_cpp_test

#cli python
python3 cli_python_test.py

#gui python
#python3 gui_python_test.py

cd ~
rm -rf raspberry-pi-opencv

echo "================================"
echo "install_opencv_part2 finished"
echo "================================"
















