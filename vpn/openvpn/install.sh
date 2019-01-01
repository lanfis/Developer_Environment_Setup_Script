#!/bin/bash
File_Name_LZO="lzo-2.10";
Download_File_Name_LZO="${File_Name_LZO}.tar.gz";
File_Name_OPENVPN="openvpn-2.4.6";
Download_File_Name_OPENVPN="${File_Name_OPENVPN}.tar.xz";

#sudo su;
apt-get -y update;
#apt-get install -y openvpn;
apt-get install -y easy-rsa;
apt-get install -y libssl-dev liblzo2-dev libpam0g-dev build-essential net-tools;
apt-get install -y network-manager-openvpn-gnome;
tput setaf 2;
echo "Downloading ${Download_File_Name_LZO} ...";
tput sgr0;
wget http://www.oberhumer.com/opensource/lzo/download/${Download_File_Name_LZO};
tput setaf 2;
echo "Unziping ${Download_File_Name_LZO} ...";
tput sgr0;
tar zxvf ${Download_File_Name_LZO};
tput setaf 2;
echo "Making ${File_Name_LZO} ...";
tput sgr0;
cd ${File_Name_LZO}
./configure --prefix=/usr                    \
            --enable-shared                  \
            --disable-static                 \
            --docdir=/usr/share/doc/${File_Name_LZO} && make;
tput setaf 2;
echo "Installing ${File_Name_LZO} ...";
tput sgr0;
make install;
cd ..;

tput setaf 2;
echo "Downloading ${Download_File_Name_OPENVPN} ...";
tput sgr0;
wget https://swupdate.openvpn.org/community/releases/${Download_File_Name_OPENVPN};
tput setaf 2;
echo "Unziping ${Download_File_Name_OPENVPN} ...";
tput sgr0;
tar Jxvf ${Download_File_Name_OPENVPN};
tput setaf 2;
echo "Making ${File_Name_OPENVPN} ...";
tput sgr0;
cd ${File_Name_OPENVPN};
./configure;
make;
tput setaf 2;
echo "Installing ${File_Name_OPENVPN} ...";
tput sgr0;
make install;
cd ..;
