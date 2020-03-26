# Rasbian_NCS2_Facial_Detection

install OpenCV 4
https://solarianprogrammer.com/2019/09/17/install-opencv-raspberry-pi-raspbian-cpp-python-development/

Install the OpenVINO
https://docs.openvinotoolkit.org/2019_R3.1/_docs_install_guides_installing_openvino_raspbian.html

Download these inside the colned repo (model for NCS2)
wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.bin

wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.xml

Enable Camera
sudo raspi-config. Select interfaces→enable camera.
sudo modprobe bcm2835-v4l2
reboot


Increase Swap partition size
sudo nano /etc/dphys-swapfile
Change CONF_SWAPSIZE=100 to CONF_SWAPSIZE=2048

To run program(image)
open the file openvino_fd_myriad.py
change frame = cv.imread('/home/pi/Downloads/download4.jpeg')
to an image with a face of your choice

To run the program (video)
python3 openvino_fd_myriad_video.py
