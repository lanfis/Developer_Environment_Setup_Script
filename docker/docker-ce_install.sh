#!/bin/sh
sudo apt-get remove docker docker-engine docker.io;
sudo apt-get -y update;
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common;

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo apt-key fingerprint 0EBFCD88;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";

sudo apt-get -y update;
sudo apt-get install -y docker-ce;
#sudo apt-get install -y docker-ce=17.12.0~ce-0~ubuntu;
