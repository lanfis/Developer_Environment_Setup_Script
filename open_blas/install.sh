#!/bin/sh
echo "-- Fetching needed packages ...\n";
sudo apt-get -y update;
sudo sh blas_download.sh;
echo "-- Generating installation script ...\n";
cp blas_install.sh $HOME/OpenBLAS/;
cd "$HOME/OpenBLAS/";
sudo sh $HOME/OpenBLAS/blas_install.sh;
