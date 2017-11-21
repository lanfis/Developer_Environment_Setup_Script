#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo apt-get -y install libmysqlclient-dev
sudo -H pip install --upgrade pip;
sudo apt-get install python-lmdb;
sudo sh caffe_download.sh;
echo "-- Generating release directory ...\n";
mkdir $HOME/caffe2/build;
echo "-- Generating installation script ...\n";
cp caffe_install.sh $HOME/caffe2/;
cd "$HOME/caffe2";
sudo sh $HOME/caffe2/caffe_install.sh;

#echo $PYTHONPATH;
#echo "export PYTHONPATH=/usr/local:$PYTHONPATH:$HOME/caffe2/build" >> ~/.bashrc;

#echo $LD_LIBRARY_PATH;
#echo "export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH" >> ~/.bashrc;
#source ~/.bashrc;
