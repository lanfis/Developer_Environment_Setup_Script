#!/bin/sh
tput setaf 2;
echo "Starting build swap for 4 GB space ...";
tput sgr0;

tput setaf 2;
echo "Locating space ...";
tput sgr0;
fallocate -l 4G /swapfile;
chmod 600 /swapfile;

tput setaf 2;
echo "Making swap space ...";
tput sgr0;
mkswap /swapfile;
swapon /swapfile ;

tput setaf 2;
echo "Adding default loading ...";
tput sgr0;
echo "/swapfile   swap    swap    sw  0   0" >> /etc/fstab;
