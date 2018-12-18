#!/bin/sh
tput setaf 2;
echo "--Installing essential ...";
tput sgr0;
sudo apt-get -y update;
sudo apt-get install -y wget;

if [ -f "./annotations_trainval2014.zip" ]; then
    tput setaf 4;
    echo "--2014 train/val annotations is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2014 train/val annotations ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/annotations_trainval2014.zip";
fi

if [ -f "./image_info_test2014.zip" ]; then
    tput setaf 4;
    echo "--2014 test images info is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2014 test images info ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/image_info_test2014.zip";
fi


if [ -f "./train2014.zip" ]; then
    tput setaf 4;
    echo "--2014 train images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2014 train images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/train2014.zip";
fi

if [ -f "./val2014.zip" ]; then
    tput setaf 4;
    echo "--2014 val images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2014 val images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/val2014.zip";
fi

if [ -f "./test2014.zip" ]; then
    tput setaf 4;
    echo "--2014 test images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2014 test images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/test2014.zip";
fi

if [ -f "./image_info_test2015.zip" ]; then
    tput setaf 4;
    echo "--2015 test images info is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2015 test images info ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/image_info_test2015.zip";
fi


if [ -f "./test2015.zip" ]; then
    tput setaf 4;
    echo "--2015 test images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2015 test images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/test2015.zip";
fi


if [ -f "./annotations_trainval2017.zip" ]; then
    tput setaf 4;
    echo "--2017 train/val annotations is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 train/val annotations ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/annotations_trainval2017.zip";
fi

if [ -f "./stuff_annotations_trainval2017.zip" ]; then
    tput setaf 4;
    echo "--2017 stuff train/val annotations is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 stuff train/val annotations ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/stuff_annotations_trainval2017.zip";
fi

if [ -f "./panoptic_annotations_trainval2017.zip" ]; then
    tput setaf 4;
    echo "--2017 panoptic train/val annotations is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 panoptic train/val annotations ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/panoptic_annotations_trainval2017.zip";
fi

if [ -f "./image_info_test2017.zip" ]; then
    tput setaf 4;
    echo "--2017 test images info is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 test images info ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/image_info_test2017.zip";
fi


if [ -f "./train2017.zip" ]; then
    tput setaf 4;
    echo "--2017 train images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 train images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/train2017.zip";
fi

if [ -f "./val2017.zip" ]; then
    tput setaf 4;
    echo "--2017 val images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 val images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/val2017.zip";
fi

if [ -f "./test2017.zip" ]; then
    tput setaf 4;
    echo "--2017 test images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 test images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/test2017.zip";
fi

if [ -f "./image_info_unlabeled2017.zip" ]; then
    tput setaf 4;
    echo "--2017 unlabeled images info is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 unlabeled images info ...";
    tput sgr0;
    wget "http://images.cocodataset.org/annotations/image_info_unlabeled2017.zip";
fi

if [ -f "./unlabeled2017.zip" ]; then
    tput setaf 4;
    echo "--2017 unlabeled images is already downloaded !";
    tput sgr0;
else
    tput setaf 2;
    echo "--Downloading 2017 unlabeled images ...";
    tput sgr0;
    wget "http://images.cocodataset.org/zips/unlabeled2017.zip";
fi

tput sgr0;
