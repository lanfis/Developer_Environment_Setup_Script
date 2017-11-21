#!/bin/sh
echo "-- cloning libfreenect2 ...\n";
git clone https://github.com/OpenKinect/libfreenect2.git $HOME/libfreenect2;
sudo apt-get install -y build-essential cmake pkg-config;
sudo apt-get install -y libusb-1.0-0-dev;
sudo apt-get install -y libturbojpeg libjpeg-turbo8-dev;
sudo apt-get install -y libglfw3-dev;
sudo apt-get install -y beignet-dev;
sudo apt-get install -y libva-dev libjpeg-dev;
sudo apt-get install -y libopenni2-dev;