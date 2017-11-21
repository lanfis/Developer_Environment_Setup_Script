#!/bin/sh
sudo apt-get install -y build-essential;
sudo apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev;
sudo apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev;
sudo apt-get -y update;
echo "-- cloning opencv ...\n";
git clone --recursive https://github.com/opencv/opencv.git $HOME/opencv;
echo "-- cloning opencv_contrib ...\n";
git clone --recursive https://github.com/opencv/opencv_contrib.git $HOME/opencv_contrib;