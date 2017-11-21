#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo apt-get install -y wget python;
sudo wget https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py;
sudo pip install mxnet-cu80;
sudo apt-get install -y graphviz;
sudo pip install graphviz;
