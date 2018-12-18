#!/bin/sh
sudo apt-get -y update;
sudo tar -zxv "noip-duc-linux.tar.gz" $HOME/;
cd $HOME/"noip-2.1.9-1";
sudo make;
sudo make install;
sudo echo "sudo .$HOME/noip-2.1.9-1/noip2" >> /etc/rc.local;
sudo ./$HOME/noip-2.1.9-1/noip2;
