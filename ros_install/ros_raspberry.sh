#!/bin/sh
#reference : http://wiki.ros.org/ROSberryPi/Installing%20ROS%20Kinetic%20on%20the%20Raspberry%20Pi
tput setaf 2;
echo "Adding repository and source list";
tput sgr0;
#sudo apt-add-repository universe;
#sudo apt-add-repository multiverse;
#sudo apt-add-repository restricted;
sudo apt-get -y update;
sudo apt-get install -y lsb-release;
sudo apt-get install -y dirmngr;
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116;

tput setaf 2;
echo "Updating ...";
tput sgr0;
sudo apt-get -y update;
sudo apt-get -y upgrade;

tput setaf 2;
echo "Installing dependence ...";
tput sgr0;
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake;
sudo rosdep init;
rosdep update;

tput setaf 2;
echo "Creating workspace ...";
tput sgr0;
mkdir -p ~/ros_catkin_ws;
cd ~/ros_catkin_ws;
#rosinstall_generator ros_comm --rosdistro kinetic --deps --wet-only --tar > kinetic-ros_comm-wet.rosinstall;
#wstool init src kinetic-ros_comm-wet.rosinstall;
rosinstall_generator desktop --rosdistro kinetic --deps --wet-only --tar > kinetic-desktop-wet.rosinstall;
wstool init src kinetic-desktop-wet.rosinstall;


tput setaf 2;
echo "Resolving dependencies ...";
tput sgr0;
mkdir -p ~/ros_catkin_ws/external_src;
cd ~/ros_catkin_ws/external_src;
wget http://sourceforge.net/projects/assimp/files/assimp-3.1/assimp-3.1.1_no_test_models.zip/download -O assimp-3.1.1_no_test_models.zip;
unzip assimp-3.1.1_no_test_models.zip;
cd assimp-3.1.1;
cmake .;
make -j4;
sudo make install;
cd ~/ros_catkin_ws;
rosdep install -y --from-paths src --ignore-src --rosdistro kinetic -r --os=debian:stretch;

tput setaf 2;
echo "Installing ROS ...";
tput sgr0;
sudo ./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/kinetic -j4;
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc;
source ~/.bashrc;
#sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential;

tput setaf 2;
echo "Installing packages ...";
tput sgr0;
rosinstall_generator camera_info_manager  nodelet ros_comm ros_control joystick_drivers --rosdistro kinetic --deps --wet-only --tar > kinetic-custom_ros.rosinstall;

tput setaf 2;
echo "Merging packages ...";
tput sgr0;
wstool merge -t src kinetic-custom_ros.rosinstall;
wstool update -t src;
rosdep install --from-paths src --ignore-src --rosdistro kinetic -y -r --os=debian:stretch;
sudo ./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/kinetic -j4;

tput setaf 2;
echo "Installation complete!";
tput sgr0;
