#!/bin/sh
tput setaf 2;
echo "--Downloading essential ...";
tput sgr0;

git clone --recursive https://github.com/stonier/qt_ros.git;
git clone --recursive --branch kinetic-devel https://github.com/ros-controls/ros_control.git;
git clone --recursive https://github.com/ROBOTIS-GIT/ROBOTIS-MANIPULATOR-H.git;
git clone --recursive https://github.com/ROBOTIS-GIT/RH-P12-RN.git;
git clone --recursive https://github.com/ROBOTIS-GIT/ROBOTIS-Framework.git;
git clone --recursive https://github.com/ROBOTIS-GIT/ROBOTIS-Framework-msgs.git;
git clone --recursive https://github.com/ROBOTIS-GIT/ROBOTIS-Math.git;
git clone --recursive https://github.com/ROBOTIS-GIT/DynamixelSDK.git;

tput setaf 2;
echo "--Essential files ready !";
    

tput sgr0;
