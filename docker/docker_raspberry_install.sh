#!/bin/sh
sudo apt-get -y update;
curl -sSL https://get.docker.com | sh;
sudo usermod -aG docker pi;
