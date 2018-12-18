#!/bin/sh
tput setaf 2;
echo "--Installing essential ...";
tput sgr0;
apt-get -y update;
python3 -m pip install --upgrade pip;
pip3 install --upgrade pip;
pip install --upgrade pip setuptools;
pip3 install --upgrade pip setuptools;
pip install Cython;
pip3 install Cython;
pip install scikit-image;
pip3 install scikit-image;
apt-get install -y python3-matplotlib;

git clone --recursive https://github.com/cocodataset/cocoapi.git;

if [ -d "./cocoapi" ]; then
    tput setaf 4;
    echo "--MS COCO API is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading MS COCO API ...";
    tput sgr0;
    git clone --recursive https://github.com/cocodataset/cocoapi.git;
fi

cd "cocoapi/PythonAPI";
# To compile and install locally 
python3 setup.py build_ext --inplace;
# To install library to Python site-packages
python3 setup.py build_ext install;

tput sgr0;
