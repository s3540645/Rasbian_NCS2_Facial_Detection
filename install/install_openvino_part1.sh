#Install the OpenVINO™ Toolkit for Raspbian* OS Package

echo "================================"
echo "install_OpenVino_part1 start"
echo "================================"

echo "--------------------------------"
echo "download OpenVino and setup"
echo "--------------------------------"

#download OpenVino and setup
mkdir -p ~/OpenVINO/datasets/test
cd ~/OpenVINO/
wget https://download.01.org/opencv/2019/openvinotoolkit/R3/l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz
sudo mkdir -p /opt/intel/openvino
sudo tar -xf  l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz --strip 1 -C /opt/intel/openvino
rm -rf l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz

echo "--------------------------------"
echo "Install External Software Dependencies"
echo "--------------------------------"

#Install External Software Dependencies
sudo apt install cmake  -y

echo "================================"
echo "install_OpenVino_part1 finished"
echo "================================"

