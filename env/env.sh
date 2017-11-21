#!/bin/sh
sudo apt-get -y update;
sudo apt-get -y full-upgrade;
sudo apt-get install -y ssh;
sudo echo "sudo service ssh restart;" >> /etc/rc.local;
sudo service ssh restart;
sudo apt-get install -y vim;
sudo apt-get install -y git;
