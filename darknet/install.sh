#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo sh darknet_download.sh;
echo "-- Generating installation script ...\n";
cp darknet_install.sh $HOME/darknet/;
sudo chmod 777 $HOME/darknet/;
cp yolo.weights $HOME/darknet/;
cd "$HOME/darknet/";
sudo sh $HOME/darknet/darknet_install.sh;
