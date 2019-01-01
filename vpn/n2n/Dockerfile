FROM ubuntu:xenial
LABEL maintainer="Lanfis"

RUN apt-get -y update
#RUN apt-get -y upgrade
####ENV INSTALL####
#RUN apt-get install -y sudo
RUN apt-get install -y apt-utils vim git build-essential pkg-config
#RUN apt-get install -y python python-dev
#RUN apt-get install -y python3 python3-dev
#RUN apt-get install -y python-pip
#RUN apt-get install -y python3-pip
#RUN pip install --upgrade pip
#RUN pip3 install --upgrade pip
#RUN pip install numpy
#RUN pip3 install numpy
####ENV INSTALL####


####N2N INSTALL####
COPY ./install.sh /home/install.sh
RUN chmod 755 /home/install.sh
RUN bash /home/install.sh
RUN mv /home/n2n /n2n
#RUN sudo chmod 755 $HOME/install.sh
#RUN sudo bash $HOME/install.sh
####N2N INSTALL####

#######################################
## For currently not used !
#######################################
####Listen port 5645
####Data   port 7654
#### docker run --rm -d -p 5645:5645/udp -p 7654:7654/udp n2n:n2n /n2n/supernode -l 5645
#RUN /n2n/supernode -l 5645
#sudo ~/n2n/edge -f -d n2n0 -a 10.128.0.4 -c test_name -k qwe -l vlan-vpn.ddns.net:443 -M 1200 -b
