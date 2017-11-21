#!/bin/sh
echo "---- cmaking ...\n";
sudo cmake -DOPENCV_EXTRA_MODULES_PATH=$HOME/opencv_contrib/modules ~/opencv;
echo "---- making ...\n";
sudo make -j4;
echo "---- making install ...\n";
sudo make install;