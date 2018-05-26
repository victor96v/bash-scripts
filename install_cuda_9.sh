#!/bin/bash

#install gcc if not installed
sudo apt-get install build-essential

#gets cuda 9.0 and install it
wget -c http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda-9.0

#check if cuda has worked correctly
nvidia-smi

#bashrc configuration
echo 'export CUDA_HOME=/usr/local/cuda' >> ~/.bashrc
echo 'export PATH=$PATH:$CUDA_HOME/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$CUDA_HOME/lib64' >> ~/.bashrc
source ~/.bashrc
sudo reboot


