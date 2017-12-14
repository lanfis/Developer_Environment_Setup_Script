#!/bin/sh
echo "-- installing dependencies ...\n";
#sudo apt-get install -y python-numpy python-dev python-pip python-wheel;
sudo apt-get install -y python3-numpy python3-dev python3-pip python3-wheel
echo "-- installing bazl ...\n";
sudo sh bazl_install.sh;
echo "-- installing dependencies ...\n";
sudo apt-get install -y libcupti-dev;
sudo -H pip3 install wheel;
sudo -H pip3 install absl-py;
sudo -H pip3 install enum34;
sudo -H pip3 install numpy;
sudo -H pip3 install six;
sudo -H pip3 install protobuf;
sudo -H pip3 install tensorflow-tensorboard;
echo "-- cloning tensorflow ...\n";
git clone --recursive https://github.com/tensorflow/tensorflow $HOME/tensorflow;
cd $HOME/tensorflow;
sudo git checkout r1.4;
