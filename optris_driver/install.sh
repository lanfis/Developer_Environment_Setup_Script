#!/bin/sh
sudo apt-get -y update;
sudo dpkg -i libirimager-3.0.0-amd64.deb;
sudo ir_download_calibration;
sudo ir_find_serial;
sudo ir_generate_configuration > "ir_find_serial.xml";
