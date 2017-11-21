#!/bin/sh
echo "---- cmaking ...\n";
sudo cmake .. -DENABLE_CXX11=ON -DCMAKE_INSTALL_PREFIX=$HOME/freenect2;
echo "---- making ...\n";
sudo make -j2;
echo "---- making install ...\n";
sudo make install;