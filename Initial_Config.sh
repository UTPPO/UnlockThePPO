#!/bin/bash

sudo apt install update -y
sudo apt install upgrade -y
sudo timedatectl set-timezone America/Denver

mv ~/unlocktheppo/dailyupdate.sh /usr/local/sbin/dailyupdate.sh
echo "done!"
