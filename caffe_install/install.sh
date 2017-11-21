#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo sh caffe_download.sh;
echo "-- Generating release directory ...\n";
mkdir $HOME/caffe/build;
echo "-- Generating MakeFile.config(for CPU running) ...\n";
cp Makefile_OpenBLAS_GPU.config $HOME/caffe/Makefile.config;
echo "-- Generating installation script ...\n";
cp caffe_install.sh $HOME/caffe/build/;
cd "$HOME/caffe/build";
sudo sh $HOME/caffe/build/caffe_install.sh;
mkdir $HOME/caffe/include/caffe/proto;
protoc $HOME/caffe/src/caffe/proto/caffe.proto --cpp_out=.;
mv $HOME/caffe/src/caffe/proto/caffe.pb.h $HOME/caffe/src/caffe/proto/caffe.pb.cpp $HOME/caffe/include/caffe/proto;
