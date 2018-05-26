#!/bin/bash

#installing cudnn 7 for cuda 9.0
#download it from cudnn archive.
#wget returns forbidden, due to the fact that it requires login.
tar -xzvf cudnn-9.0-linux-x64-v7.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
rm cudnn-9.0-linux-x64-v7.tgz
rm -rf cuda