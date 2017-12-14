#!/bin/sh
sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb;
sudo apt-get -y update;
sudo apt-get install -y cuda;
sudo cp $HOME/cuda/include/cudnn.h /usr/local/cuda/include;
sudo cp $HOME/cuda/lib64/libcudnn* /usr/local/cuda/lib64;
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*;
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> ~/.bashrc;
echo "export CUDA_HOME=/usr/local/cuda" >> ~/.bashrc;
echo "export PATH=$PATH:/usr/local/cuda/bin" >> ~/.bashrc;
