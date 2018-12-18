#!/bin/sh
sudo groupadd docker;
sudo gpasswd -a $USER docker;
sudo usermod -G docker -a $USER;
#sudo newgrp docker;
