# Raspbian_NCS2_Facial_Detection


mkdir ~/OpenVINO <br />
cd ~/OpenVINO  <br />
git clone https://github.com/s3540645/Raspbian_NCS2_Facial_Detection.git <br />
cd Raspbian_NCS2_Facial_Detection <br />
cd install <br />
chmod +x install_all_part1.sh <br />
chmod +x install_all_part2.sh <br />
sh install_all_part1.sh <br />
. .bashrc
sh install_all_part2.sh <br />

Enable Camera
---------------
sudo raspi-config. Select interfaces→enable camera. <br />
sudo modprobe bcm2835-v4l2 <br />
reboot <br />


Increase Swap partition size
----------------------------
sudo nano /etc/dphys-swapfile <br />

Change CONF_SWAPSIZE=100 to CONF_SWAPSIZE=2048 <br />


To run program (image)
--------------------
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection
python3 openvino_fd_myriad.py <br />


To run the program (video)
----------------------------
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection
python3 openvino_fd_myriad_video.py <br />
