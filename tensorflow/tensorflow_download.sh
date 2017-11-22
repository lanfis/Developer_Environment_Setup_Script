#!/bin/sh
echo "-- installing dependencies ...\n";
sudo apt-get install -y python-numpy python-dev python-pip python-wheel;
sudo apt-get install -y python3-numpy python3-dev python3-pip python3-wheel
echo "-- installing bazl ...\n";
sudo sh bazl_install.sh;
echo "-- installing dependencies ...\n";
sudo apt-get install -y libcupti-dev;
sudo -H pip install python-wheel;
sudo -H pip install absl-py;
sudo -H pip install enum34;
sudo -H pip install numpy;
sudo -H pip install six;
sudo -H pip install protobuf;
sudo -H pip install tensorflow-tensorboard;
echo "-- cloning tensorflow ...\n";
git clone --recursive https://github.com/tensorflow/tensorflow $HOME/caffe2;
cd $HOME/tensorflow;
git checkout r1.4