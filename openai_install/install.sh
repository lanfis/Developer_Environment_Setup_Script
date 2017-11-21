#!/bin/sh
echo "-- Updating ...\n";
sudo apt-get -y update;
sudo pip install --upgrade pip;

echo "-- Installation starting ...\n";
sudo sh openai_gym_download.sh;
sudo sh openai_gym_install.sh;
