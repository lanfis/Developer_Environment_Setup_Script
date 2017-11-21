#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo sh libfreenect2_download.sh;
echo "-- Generating build directory ...\n";
mkdir $HOME/libfreenect2/build;
echo "-- Generating installation script ...\n";
cp libfreenect2_install.sh $HOME/libfreenect2/build;
cd "$HOME/libfreenect2/build";
sudo sh $HOME/libfreenect2/build/libfreenect2_install.sh;