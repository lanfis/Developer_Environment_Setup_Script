#!/bin/sh
echo "-- installing dependencies ...\n";
sudo -H pip install wheel;
sudo apt-get install -y libblas-dev liblapack-dev;
sudo apt-get install -y --no-install-recommends build-essential cmake git libgoogle-glog-dev       libprotobuf-dev protobuf-compiler python-dev python-pip;
sudo -H pip install numpy protobuf;
echo "-- installing optional dependencies ...\n";
sudo apt-get install -y --no-install-recommends libgflags-dev;
sudo apt-get install -y --no-install-recommends libgtest-dev libiomp-dev libleveldb-dev liblmdb-dev libopencv-dev libopenmpi-dev libsnappy-dev openmpi-bin openmpi-doc python-pydot;
sudo -H pip install flask future graphviz hypothesis jupyter matplotlib pydot python-nvd3 pyyaml  requests scikit-image scipy setuptools six tornado;
sudo -H pip install --upgrade matplotlib
echo "-- recheck dependencies installation ...\n";
sudo -H pip2 install flask future graphviz hypothesis jupyter matplotlib pydot python-nvd3 pyyaml  requests scikit-image scipy setuptools six tornado;
echo "-- cloning caffe ...\n";
git clone --recursive https://github.com/caffe2/caffe2.git $HOME/caffe2;
