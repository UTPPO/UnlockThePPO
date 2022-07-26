#!/bin/bash

sudo apt install update -y
sudo apt install upgrade -y
sudo timedatectl set-timezone America/Denver

sudo mv ~/unlocktheppo/dailyupdate.sh /usr/local/sbin/dailyupdate.sh
sudo rm -r ~/unlocktheppo
echo "done!"
