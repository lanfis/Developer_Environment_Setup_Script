#!/bin/bash

tput setaf 2;
echo "Starting start_up setting ...";
tput sgr0;

tput setaf 2;
echo "Setting rc.local.service ...";
tput sgr0;
echo "[Install]\n" > lib/systemd/system/rc.local.service;
echo "WantedBy=multi-user.target\n" > lib/systemd/system/rc.local.service;
echo "Alias=rc-local.service\n" > lib/systemd/system/rc.local.service;

tput setaf 2;
echo "Creating rc.local file ...";
tput sgr0;
echo "#!/bin/sh -e \n#\n# rc.local\n#\n# This script is executed at the end of each multiuser runlevel.\n# Make sure that the script will \"exit 0\" on success or any other\n# value on error.\n#\n# In order to enable or disable this script just change the execution\n# bits.\n#\n# By default this script does nothing.\n\n" > /etc/rc.local;
echo "sudo service gdm start;\n" > /etc/rc.local;
echo "nohup sudo openvpn --config /etc/openvpn/client/client.conf > $HOME/openvpn.log;\n" > /etc/rc.local;
echo "exit 0" > /etc/rc.local;

chmod +x /etc/rc.local;
systemctl enable rc-local;
systemctl start rc-local.service
