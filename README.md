# Raspbian_NCS2_Facial_Detection

Note: if V2 fails use V1
---------------
Step 1: Install Part 1
---------------
echo "Connect Camera and Neural Compute Stick 2 to Raspberry pi 4" <br />
mkdir ~/OpenVINO <br />
cd ~/OpenVINO  <br />
git clone https://github.com/s3540645/Raspbian_NCS2_Facial_Detection.git <br />
cd Raspbian_NCS2_Facial_Detection <br />
cd install <br />
chmod +x *.sh <br />
sh install_all_part1.sh <br /> <br />
cd ~  <br />
echo 'export LD_LIBRARY_PATH=/opt/opencv-4.1.0/lib:$LD_LIBRARY_PATH' >> .bashrc  <br />
. .bashrc  <br />
exit <br />

Step 2: Install Part 2
---------------------
echo "Open new terminal"  <br />
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection/install <br />
sh install_all_part2.sh <br />
source /opt/intel/openvino/bin/setupvars.sh <br />
sh /opt/intel/openvino/install_dependencies/install_NCS_udev_rules.sh <br />
echo "source /opt/intel/openvino/bin/setupvars.sh" >> ~/.bashrc <br />
exit <br />

Step 3: Install Part 2
---------------------
echo "Open new terminal"  <br />
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection/install <br />
sh install_all_part3.sh <br />
exit <br />

Step 3.5: To run program (image-optional)
--------------------------------
echo "Open new terminal"  <br />
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection <br />
python3 openvino_fd_myriad.py <br />
echo "Can stop here if only image file want and no camera" <br />


Step 4: Enable Camera
---------------------
sudo raspi-config<br />
echo "Select 5 interfacing Options" <br />
echo "Select P1 Camera." <br />
echo "Select Yes for enable" <br />
echo "Select Finish" <br />
sudo modprobe bcm2835-v4l2 <br />


Step 5: Increase Swap partition size
-------------------------------------
sudo nano /etc/dphys-swapfile <br />
echo "Change CONF_SWAPSIZE=100 to CONF_SWAPSIZE=2048" <br />
reboot <br />


 Step 6: To run the program (video)
----------------------------
cd ~/OpenVINO/Raspbian_NCS2_Facial_Detection <br />
python3 openvino_fd_myriad_video.py <br />
echo "Use the ESC key to exit" <br />

 Step 7: Insperation and Sources
------------------------------------
https://hackaday.com/2019/01/31/ai-on-raspberry-pi-with-the-intel-neural-compute-stick/ <br />
https://solarianprogrammer.com/2019/09/17/install-opencv-raspberry-pi-raspbian-cpp-python-development/ <br />
https://docs.openvinotoolkit.org/2019_R3.1/_docs_install_guides_installing_openvino_raspbian.html <br />
