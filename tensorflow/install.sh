#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo apt-get install -y libcupti-dev;
sudo -H pip2 install -y --upgrade pip;
sudo pip3 install tensorflow;
sudo pip3 install tensorflow-gpu;
