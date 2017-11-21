#!/bin/sh
echo "-- making ...\n";
sudo make -j4;
cd build;
sudo make install;
python -c 'from caffe2.python import core' 2>/dev/null && echo "Success" || echo "Failure";
