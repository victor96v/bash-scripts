#!bin/bash
#yolov3 and python_wrapper installation

#install python
sudo apt-get update
sudo apt-get -y install python3
sudo apt-get -y install python3-pip

#install cython and numpy
sudo pip3 install numpy
sudo pip3 install cython
sudo sh opencv34_myinstall.sh

git clone https://github.com/pjreddie/darknet
cd darknet
sed -i '/OPENCV=0/c\OPENCV=1' Makefile
sed -i '/CUDA=0/c\CUDA=1' Makefile
sed -i '/CUDNN=0/c\CUDNN=1' Makefile

make

$DARKNET = $(pwd)
$export_darknet = 'export DARKNET_HOME='

echo $export_darknet$DARKNET >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DARKNET_HOME' >> ~/.bashrc

#installing the wrapper and custom files







