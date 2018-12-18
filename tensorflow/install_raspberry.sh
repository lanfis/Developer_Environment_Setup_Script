#!/bin/sh
tput setaf 2;
echo "Updating pip ...";
tput sgr0;
sudo apt-get -y update;
sudo apt-get install -y python-pip;
sudo -H pip install --upgrade pip;
tput setaf 2;
echo "Install opencv-python ...";
tput sgr0;
sudo -H pip3 install opencv-python;
pip -V;

tput setaf 2;
echo "Installing atlas ...";
tput sgr0;
sudo apt install -y libatlas-base-dev;

tput setaf 2;
echo "Installing tensorflow ...";
tput sgr0;
pip install tensorflow;

tput setaf 2;
echo "Installation complete !";
tput sgr0;
