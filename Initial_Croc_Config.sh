#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo timedatectl set-timezone America/Denver

wget https://github.com/UTPPO/UnlockThePPO/blob/main/dailyupdate.sh
chmod +x ~/dailyupdate.sh
sudo mv ~/dailyupdate.sh /usr/local/sbin/dailyupdate.sh

echo "done!"
