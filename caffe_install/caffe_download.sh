#!/bin/sh
echo "-- installing dependencies ...\n";
sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler;
sudo apt-get install -y --no-install-recommends libboost-all-dev;
sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev;
sudo apt-get install -y python-pip;
sudo apt-get install -y python-dev;
sudo apt-get install -y python-numpy python-scipy;
echo "-- installing ATLAS BLAS ...\n";
sudo apt-get install -y libatlas-base-dev;
echo "-- installing open BLAS ...\n";
sudo apt-get install -y libopenblas-dev;
echo "-- cloning caffe ...\n";
git clone --recursive https://github.com/BVLC/caffe.git $HOME/caffe;
