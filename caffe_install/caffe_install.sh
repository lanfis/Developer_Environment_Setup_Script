#!/bin/sh
echo "---- cmaking ...\n";
sudo cmake ..;
echo "---- making ...\n";
sudo make all -j4;
echo "---- making install ...\n";
sudo make install;
echo "---- making runtest ...\n";
sudo make runtest;