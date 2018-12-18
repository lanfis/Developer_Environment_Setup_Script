#!/bin/sh
sudo apt-get -y update;

echo "--installing LZO ...";
LZO="lzo-2.10"
LZO_FILE="$LZO.tar.gz"
wget http://www.oberhumer.com/opensource/lzo/download/$LZO_FILE;
tar zxf $LZO_FILE;
cd $LZO
./configure --prefix=/usr                    \
            --enable-shared                  \
            --disable-static                 \
            --docdir=/usr/share/doc/lzo-2.10 &&
make;
sudo make install;
rm $LZO_FILE;
cd ..;

echo "--installing TINC ...";
sudo apt-get install -y tinc;
#TINC="tinc-1.0.33"
#TINC_FILE="$TINC.tar.gz"

#wget https://www.tinc-vpn.org/packages/$TINC_FILE;
#tar zxf $TINC_FILE;
#cd $TINC;
#./configure;
#sudo make;
#sudo make install;
#rm $TINC_FILE;
