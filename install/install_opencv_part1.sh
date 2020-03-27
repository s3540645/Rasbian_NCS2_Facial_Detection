#!/bin/bash

wget https://github.com/sol-prog/raspberry-pi-opencv/releases/download/opencv4rpi2.1/opencv-4.1.0-armhf.tar.bz2
tar xvf opencv-4.1.0-armhf.tar.bz2
sudo cp -r opencv-4.1.0 /opt
rm opencv-4.1.0-armhf.tar.bz2
sudo rm -rf opencv-4.1.0

#install dependancies
sudo apt install libtiff-dev zlib1g-dev -y
sudo apt install libjpeg-dev libpng-dev -y
sudo apt install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt install python-numpy python3-numpy -y
sudo apt install libgtk-3-dev libcanberra-gtk3-dev -y

#Used for OpenVino install
sudo usermod -a -G users "$(whoami)"

#add to system path
cd ~
echo 'export LD_LIBRARY_PATH=/opt/opencv-4.1.0/lib:$LD_LIBRARY_PATH' >> .bashrc
. .bashrc
