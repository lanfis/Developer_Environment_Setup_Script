FROM ubuntu:xenial
LABEL maintainer="Lanfis"

RUN apt-get -y update
RUN apt-get install -y software-properties-common
RUN apt-add-repository universe;
RUN apt-add-repository multiverse;
RUN apt-add-repository restricted;

####TENSORFLOW INSTALL####
RUN apt-get install -y python-pip
RUN pip -V
RUN apt-get install -y libatlas-base-dev
RUN pip install --upgrade pip
RUN pip install tensorflow 
####TENSORFLOW INSTALL####


####ROS INSTALL####
RUN apt-get -y  update
RUN apt-get install -y lsb-release
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
RUN apt-get -y update
RUN apt-get install -y ros-kinetic-ros-base
RUN rosdep init
RUN rosdep update
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
RUN apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
####ROS INSTALL####

####OPENCV INSTALL####
RUN apt-get -y update
RUN apt-get -y install git

RUN apt-get install -y build-essential
RUN apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

RUN git clone --recursive https://github.com/opencv/opencv.git /var/opencv \
	&& cd /var/opencv && mkdir release && cd release \
	&& cmake -DCMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local .. \
	&& make -j4 \
	&& make install


#RUN git clone --recursive https://github.com/opencv/opencv_contrib.git ~/opencv_contrib \
#	&& cd ~/opencv_contrib && mkdir release && cd release \
#	&& cmake -DOPENCV_EXTRA_MODULES_PATH=$HOME/opencv_contrib/modules ~/opencv \
#	&& make -j4 \
#	&& make install
####OPENCV INSTALL####
