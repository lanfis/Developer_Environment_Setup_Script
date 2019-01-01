#!/bin/bash
#INSTALL_DIR="/home";
INSTALL_PATH="/etc";
INSTALL_DIR="n2n";

tput setaf 2;
echo "--Updating ...";
tput sgr0;
apt-get -y update;
apt-get -y install openssl git;
tput setaf 2;
echo "--Installing autoconf ...";
tput sgr0;
apt-get install -y autoconf automake libtool;

tput setaf 2;
echo "--Checking files ...";
tput sgr0;
if [[ -d "${INSTALL_PATH}/${INSTALL_DIR}" ]]; then
  tput setaf 2;
  echo "--Found file : ${INSTALL_PATH}/${INSTALL_DIR}"
  tput sgr0;
else
  tput setaf 2;
  echo "--Downloading n2n ...";
  tput sgr0;
  git clone --recursive https://github.com/ntop/n2n.git ${INSTALL_PATH}/${INSTALL_DIR};
fi

tput setaf 2;
echo "--Copying n2n config file ...";
tput sgr0;
cp edge.conf edge.key edge_startup.sh ${INSTALL_PATH}/${INSTALL_DIR};
cp supernode.conf community.list supernode_startup.sh ${INSTALL_PATH}/${INSTALL_DIR};

cd "$INSTALL_PATH/${INSTALL_DIR}";

tput setaf 2;
echo "--Generating n2n ...";
tput sgr0;
sh "autogen.sh";
tput setaf 2;
echo "--Configuring n2n ...";
tput sgr0;
./configure;
tput setaf 2;
echo "--Making n2n ...";
tput sgr0;
make;
tput setaf 2;
echo "--Installing n2n ...";
tput sgr0;
make install;

tput setaf 2;
echo "--Done !";
tput sgr0;
