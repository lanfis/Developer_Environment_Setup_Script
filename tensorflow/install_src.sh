#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo -H pip install --upgrade pip;
sudo apt-get install -y python3-pip python3-dev;
sudo sh tensorflow_download.sh;
