# Rasbian_NCS2_Facial_Detection


cd Downloads  
https://github.com/s3540645/Rasbian_NCS2_Facial_Detection.git
cd Rasbian_NCS2_Facial_Detection
chmod +x install_all.sh
/install/.install_all.sh

Enable Camera
---------------
sudo raspi-config. Select interfaces→enable camera.
sudo modprobe bcm2835-v4l2
reboot


Increase Swap partition size
----------------------------
sudo nano /etc/dphys-swapfile
Change CONF_SWAPSIZE=100 to CONF_SWAPSIZE=2048

To run program(image)
--------------------
openvino_fd_myriad.py

To run the program (video)
----------------------------
python3 openvino_fd_myriad_video.py
