#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo -H pip install --upgrade pip;
sudo apt-get install -y python3-pip python3-dev;
sudo apt-get install -y libcupti-dev;
sudo -H pip install absl-py;
sudo -H pip install enum34;
sudo -H pip install numpy;
sudo -H pip install six;
sudo -H pip install protobuf;
sudo -H pip install tensorflow-tensorboard;
sudo -H pip install tensorflow;
#sudo -H pip install tensorflow-gpu;
sudo -H pip3 install tensorflow;
#sudo -H pip3 install tensorflow-gpu;
