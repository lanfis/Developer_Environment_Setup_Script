#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo sh opencv_download.sh;
echo "-- Generating release directory ...\n";
mkdir $HOME/opencv/release;
mkdir $HOME/opencv_contrib/release;
echo "-- Generating installation script ...\n";
cp opencv_install_opencv.sh $HOME/opencv/release/;
cp opencv_install_opencv_contrib.sh $HOME/opencv_contrib/release/;
cd "$HOME/opencv/release";
sudo sh $HOME/opencv/release/opencv_install_opencv.sh;
cd "$HOME/opencv_contrib/release";
sudo sh $HOME/opencv_contrib/release/opencv_install_opencv_contrib.sh;
