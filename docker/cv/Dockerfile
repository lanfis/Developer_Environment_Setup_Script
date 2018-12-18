FROM nvidia/cuda:9.1-cudnn7-runtime-ubuntu16.04
LABEL maintainer="Lanfis"

RUN apt-get update
RUN apt-get -y install git

RUN apt-get install -y build-essential
RUN apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev


RUN git clone --recursive https://github.com/opencv/opencv.git ~/opencv \
	&& cd ~/opencv && mkdir release && cd release \
	&& cmake -DCMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local .. \
	&& make -j40 \
	&& make install


#RUN git clone --recursive https://github.com/opencv/opencv_contrib.git ~/opencv_contrib \
#	&& cd ~/opencv_contrib && mkdir release && cd release \
#	&& cmake -DOPENCV_EXTRA_MODULES_PATH=$HOME/opencv_contrib/modules ~/opencv \
#	&& make -j4 \
#	&& make install
