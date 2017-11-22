#!/bin/sh
sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb;
sudo apt-get -y update;
sudo apt-get install -y cuda;
sudo cp $HOME/cuda/include/cudnn.h /usr/local/cuda-9.0/include;
sudo cp $HOME/cuda/lib64/libcudnn* /usr/local/cuda-9.0/lib64;
sudo chmod a+r /usr/local/cuda-9.0/include/cudnn.h /usr/local/cuda-9.0/lib64/libcudnn*;
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-9.0/lib64" >> ~/.bashrc;
