#!/bin/sh
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
sudo apt-get -y update;
apt-cache policy docker-ce;
sudo apt-get install -y docker-ce;
sudo groupadd docker;
sudo usermod -aG docker $USER;
sudo systemctl status docker;

