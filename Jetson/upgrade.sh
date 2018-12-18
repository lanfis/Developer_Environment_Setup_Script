#!/bin/sh
sudo apt-get -y update;
sudo apt-mark hold xserver-xorg-core;
sudo apt-get -y upgrade;