#!/bin/sh
echo "Enviroment program setting ...\n";
sudo sh env/env.sh;
echo "ROS installing ...\n";
sudo sh ros_install/ros.sh;
echo "Opencv installing ...\n";
sudo sh opencv_install/install.sh