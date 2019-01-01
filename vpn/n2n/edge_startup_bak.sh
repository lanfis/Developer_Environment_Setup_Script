#!/bin/bash
#### Listen port 5645/udp
#### Data   port 7654/udp
#### device_name
#### vpn_ip
#### vpn_network_name
#### encrypt_key
#### server_ip:port

#### docker run --rm -d -p 5645:5645/udp -p 7654:7654/udp n2n:n2n /n2n/supernode -l 5645
#### docker run --rm -d -p 5645:5645/udp -p 7654:7654/udp n2n:n2n /n2n/edge -d device_name -a vpn_ip -c vpn_network_name -k encrypt_key -l server_ip:port
#RUN /n2n/supernode -l 5645
#sudo ~/n2n/edge -f -d device_name -a vpn_ip -c vpn_network_name -k encrypt_key -l server_ip:port -M 1200 -b
#sudo ~/n2n/edge -f -d n2n0 -a 10.128.0.4 -c test_name -k qwe -l vlan-vpn.ddns.net:443 -M 1200 -b


sudo edge



#INSTALL_DIR="/home";
INSTALL_DIR=$HOME;

echo "\033[32m--Updating ...\033[0m";
apt-get -y update;
apt-get -y install openssl net-tools;
echo "\033[32m--Installing autoconf ...\033[0m";
apt-get install -y autoconf automake libtool;

echo "\033[32m--Downloading n2n ...\033[0m";
git clone --recursive https://github.com/ntop/n2n.git $INSTALL_DIR/n2n;
cd "$INSTALL_DIR/n2n";

echo "\033[32m--Generating n2n ...\033[0m";
sh "autogen.sh";
echo "\033[32m--Configuring n2n ...\033[0m";
./configure;
echo "\033[32m--Making n2n ...\033[0m";
make;
echo "\033[32m--Installing n2n ...\033[0m";
make install;

echo "\033[32m--Done !\033[0m";
