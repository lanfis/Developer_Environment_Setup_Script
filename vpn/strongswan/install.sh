#!/bin/sh
sudo apt-get -y update;
sudo apt-get install -y libgmp10 libgmp3-dev libssl-dev pkg-config libpcsclite-dev libpam0g-dev
./configure  --sysconfdir=/etc --enable-eap-identity --enable-eap-md5 --enable-eap-mschapv2 --enable-eap-tls --enable-eap-ttls --enable-eap-peap  --enable-eap-tnc --enable-eap-dynamic --enable-eap-radius --enable-xauth-eap  --enable-xauth-pam  --enable-dhcp  --enable-openssl  --enable-addrblock --enable-unity  --enable-certexpire --enable-radattr --enable-tools --enable-openssl --disable-gmp --enable-xauth-psk
sudo make -j4;
sudo make install;
