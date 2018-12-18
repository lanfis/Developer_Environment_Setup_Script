#!/bin/sh
wget developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb;
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb;
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub;
#sudo dpkg -i cuda-repo-ubuntu1604_9.1.85-1_amd64.deb;
#sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub;
sudo apt-get -y update;
sudo apt-get install -y cuda;

#sudo cp $HOME/cuda/include/cudnn.h /usr/local/cuda/include;
#sudo cp $HOME/cuda/lib64/libcudnn* /usr/local/cuda/lib64;
#sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*;
#echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> ~/.bashrc;
#echo "export CUDA_HOME=/usr/local/cuda" >> ~/.bashrc;
#echo "export PATH=$PATH:/usr/local/cuda/bin" >> ~/.bashrc;
