#!/bin/sh
#https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
echo "Disabling nouveau ...";
sudo touch /etc/modprobe.d/blacklist-nouveau.conf;
echo "blacklist nouveau\noptions nouveau modeset=0" > /etc/modprobe.d/blacklist-nouveau.conf;
sudo update-initramfs -u;

echo "Disabling lightdm ...";
sudo service lightdm stop;

echo "Installing ...";
#sudo ./NVIDIA-Linux-x86_64-390.48.run --no-opengl-files;
sudo ./NVIDIA-Linux-x86_64-390.87.run --no-opengl-files;

echo "Enabling lightdm ...";
sudo service lightdm start;
