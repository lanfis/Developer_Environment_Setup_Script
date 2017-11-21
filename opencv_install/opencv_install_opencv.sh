#!/bin/sh
echo "---- cmaking ...\n";
sudo cmake -DCMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..;
echo "---- making ...\n";
sudo make -j4;
echo "---- making install ...\n";
sudo make install;