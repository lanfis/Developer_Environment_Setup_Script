#!/bin/sh
####TB3 INSTALL####
sudo apt-get -y update;
wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_kinetic.sh && sudo chmod 755 ./install_ros_kinetic.sh && sudo bash ./install_ros_kinetic.sh;

sudo apt-get install -y ros-kinetic-joy ros-kinetic-teleop-twist-joy ros-kinetic-teleop-twist-keyboard ros-kinetic-laser-proc ros-kinetic-rgbd-launch ros-kinetic-depthimage-to-laserscan ros-kinetic-rosserial-arduino ros-kinetic-rosserial-python ros-kinetic-rosserial-server ros-kinetic-rosserial-client ros-kinetic-rosserial-msgs ros-kinetic-amcl ros-kinetic-map-server ros-kinetic-move-base ros-kinetic-urdf ros-kinetic-xacro ros-kinetic-compressed-image-transport ros-kinetic-rqt-image-view ros-kinetic-gmapping ros-kinetic-navigation ros-kinetic-interactive-markers;

git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git ~/catkin_ws/src/turtlebot3_msgs;
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git ~/catkin_ws/src/turtlebot3;
cd ~/catkin_ws;
source ~/.bashrc;
catkin_make;
####TB3 INSTALL####
