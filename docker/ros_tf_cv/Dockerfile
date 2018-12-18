FROM tensorflow/tensorflow:nightly-devel-gpu
LABEL maintainer="Lanfis"

RUN apt-get -y update
#RUN apt-get -y upgrade
####ENV INSTALL####
#RUN apt-get install -y sudo
RUN apt-get install -y apt-utils vim
RUN apt-get install -y python python-dev
RUN apt-get install -y python3 python3-dev
RUN apt-get install -y python-pip
RUN apt-get install -y python3-pip
RUN pip install --upgrade pip
#RUN pip3 install --upgrade pip
RUN pip install numpy
#RUN pip3 install numpy
#pip install --upgrade tensorflow-gpu
#pip3 install --upgrade tensorflow-gpu
####ENV INSTALL####

####OPENCV INSTALL####
RUN apt-get -y update
RUN apt-get -y install git

RUN apt-get install -y build-essential
RUN apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

RUN pip3 install opencv-python

#RUN git clone --recursive https://github.com/opencv/opencv.git ~/opencv \
#	&& cd ~/opencv && mkdir release && cd release \
#	&& cmake -DCMAKE_BUILD_TYPE=RELEASE -D -DCMAKE_CXX_FLAGS="-std=c++11" -DWITH_CUDA=ON -DWITH_FFMPEG=ON -DWITH_TBB=ON -DWITH_GTK=ON -DWITH_V4L=ON -DWITH_LIBV4L=ON -DWITH_OPENGL=ON CMAKE_INSTALL_PREFIX=/usr/local .. \
#	&& make -j4 \
#	&& make install


#RUN git clone --recursive https://github.com/opencv/opencv_contrib.git ~/opencv_contrib \
#	&& cd ~/opencv_contrib && mkdir release && cd release \
#	&& cmake -DOPENCV_EXTRA_MODULES_PATH=$HOME/opencv_contrib/modules ~/opencv \
#	&& make -j4 \
#	&& make install

####OPENCV INSTALL####


####ROS INSTALL####
RUN apt-get -y update
RUN apt-get install -y lsb-release
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
RUN apt-get -y update
RUN apt-get install -y ros-kinetic-desktop-full
RUN pip install rosdep
RUN pip3 install rosdep
RUN rosdep init
RUN rosdep update
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
RUN apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
####ROS INSTALL####

RUN apt-get -y update
RUN apt-get install -y wget

#ENV PYTHONPATH=/usr/lib/python3.5

