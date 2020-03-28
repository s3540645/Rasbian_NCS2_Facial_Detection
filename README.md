# Raspbian_NCS2_Facial_Detection

Step 1: Install Part 1
---------------
mkdir ~/OpenVINO <br />
cd ~/OpenVINO  <br />
git clone https://github.com/s3540645/Raspbian_NCS2_Facial_Detection.git <br />
cd Raspbian_NCS2_Facial_Detection <br />
cd install <br />
chmod +x install_all_part1.sh <br />
sh install_all_part1.sh <br />
cd ~  <br />
echo 'export LD_LIBRARY_PATH=/opt/opencv-4.1.0/lib:$LD_LIBRARY_PATH' >> .bashrc  <br />
. .bashrc  <br />
exit <br />

Step 2: Install Part 2
---------------------
echo "Open new terminal"
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection/install <br />
chmod +x install_all_part2.sh <br />
sh install_all_part2.sh <br />
reboot <br />

Step 2.5: To run program (image-optional)
--------------------------------
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection <br />
python3 openvino_fd_myriad.py <br />
echo "Can stop here if only image file want and no camera" <br />


Step 3: Enable Camera
---------------------
sudo raspi-config<br />
Select 5 interfacing Options
Select P1 Camera. <br />
Select Yes for enable <br />
Select Finish <br />
sudo modprobe bcm2835-v4l2 <br />


Step 4: Increase Swap partition size
-------------------------------------
sudo nano /etc/dphys-swapfile <br />
Change CONF_SWAPSIZE=100 to CONF_SWAPSIZE=2048 <br />
reboot <br />


 Step 5: To run the program (video)
----------------------------
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection <br />
python3 openvino_fd_myriad_video.py <br />
Use the ESC key to exit  <br />
