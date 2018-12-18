FROM ros:kinetic
LABEL maintainer="Lanfis"

RUN apt-get -y update
#RUN apt-get -y upgrade
####ENV INSTALL####
RUN apt-get install -y apt-utils vim git wget
RUN apt-get install -y python python-dev
RUN apt-get install -y python3 python3-dev
RUN apt-get install -y python-pip
RUN apt-get install -y python3-pip
RUN pip install --upgrade pip
#RUN pip3 install --upgrade pip
RUN pip install numpy
#RUN pip3 install numpy
####ENV INSTALL####

RUN apt-get install -y sudo
####TB3 INSTALL####
COPY ./install.sh $HOME/install.sh
#RUN sudo chmod 755 $HOME/install.sh
#RUN sudo bash $HOME/install.sh
####TB3 INSTALL####

####ENV SETTING####
#RUN echo "export ROS_MASTER_URI=http:192.168.100.2//:11311" >> $HOME/.bashrc
#RUN echo "export ROS_HOSTNAME=192.168.100.2" >> $HOME/.bashrc
####ENV SETTING####
