#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo -H pip install --upgrade pip;
sudo apt-get install python-lmdb;
sudo sh caffe_rl_download.sh;
#echo "-- Generating release directory ...\n";
#mkdir $HOME/caffe2/build;
echo "-- Generating installation script ...\n";
cp caffe_rl_install.sh $HOME/"reinforcement_learning_models"/;
cd "$HOME/reinforcement_learning_models";
sudo sh $HOME/reinforcement_learning_models/caffe_rl_install.sh;
