#!/bin/sh
echo "-- building ...\n";
python setup.py build
echo "-- checking ...\n"
python run_rl_gym.py -h