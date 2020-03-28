#Install the OpenVINO™ Toolkit for Raspbian* OS Package

echo "================================"
echo "install_OpenVino_part2 start"
echo "================================"

echo "--------------------------------"
echo "Build and Run Object Detection Sample"
echo "--------------------------------"

#Build and Run Object Detection 
mkdir -p ~/OpenVINO/build
cd ~/OpenVINO/build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-march=armv7-a" /opt/intel/openvino/deployment_tools/inference_engine/samples
make -j2 object_detection_sample_ssd
wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.bin
wget --no-check-certificate https://download.01.org/opencv/2019/open_model_zoo/R1/models_bin/face-detection-adas-0001/FP16/face-detection-adas-0001.xml
wget https://upload.wikimedia.org/wikipedia/commons/e/eb/T_Roosevelt.jpg -P ~/OpenVINO/datasets/test
./armv7l/Release/object_detection_sample_ssd -m face-detection-adas-0001.xml -d MYRIAD -i ~/OpenVINO/datasets/test/T_Roosevelt.jpg

echo "================================"
echo "install_OpenVino_part2 finished"
echo "================================"

