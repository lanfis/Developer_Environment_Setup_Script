#!/bin/sh
echo "-- installing dependencies ...\n";
sudo apt-get -y install linuxbrew-wrapper;
sudo apt-get -y install thrift-compiler;
brew install thrift;
sudo -H pip install gym
#sudo -H pip install "gym[all]"
#sudo apt-get install -y xvfb libav-tools xorg-dev libsdl2-dev swig cmake;

echo "-- cloning caffe RL models...\n";
git clone --recursive https://github.com/caffe2/reinforcement-learning-models $HOME/"reinforcement_learning_models";
