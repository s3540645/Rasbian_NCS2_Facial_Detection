#Install the OpenVINO™ Toolkit for Raspbian* OS Package
mkdir -p ~/OpenVINO/datasets/test
cd ~/OpenVINO/
wget https://download.01.org/opencv/2019/openvinotoolkit/R3/l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz
sudo mkdir -p /opt/intel/openvino
sudo tar -xf  l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz --strip 1 -C /opt/intel/openvino
rm -rf l_openvino_toolkit_runtime_raspbian_p_2019.3.334.tgz

#Install External Software Dependencies
sudo apt install cmake  -y

#Set the Environment Variables
source /opt/intel/openvino/bin/setupvars.sh
echo "source /opt/intel/openvino/bin/setupvars.sh" >> ~/.bashrc

#Add USB Rules
sh /opt/intel/openvino/install_dependencies/install_NCS_udev_rules.sh

#Build and Run Object Detection Sample
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-march=armv7-a" /opt/intel/openvino/deployment_tools/inference_engine/samples
make -j2 object_detection_sample_ssd
wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.bin
wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.xml
wget https://upload.wikimedia.org/wikipedia/commons/e/eb/T_Roosevelt.jpg -P ~/OpenVINO/datasets/test
./armv7l/Release/object_detection_sample_ssd -m face-detection-adas-0001.xml -d MYRIAD -i ~/OpenVINO/datasets/test/T_Roosevelt.jpg



