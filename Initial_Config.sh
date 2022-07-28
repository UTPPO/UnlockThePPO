#!/bin/bash

sudo apt update -y
sudo apt full-upgrade -y

sudo timedatectl set-timezone America/Denver

wget https://raw.githubusercontent.com/UTPPO/UnlockThePPO/main/dailyupdate.sh
chmod +x ~/dailyupdate.sh
sudo mv ~/dailyupdate.sh /usr/local/sbin/dailyupdate.sh

wget https://raw.githubusercontent.com/UTPPO/UnlockThePPO/main/Incoming_Executables.sh
chmod +x ~/Incoming_Executables.sh
sudo mv ~/Incoming_Executables.sh /usr/local/sbin/Incoming_Executables.sh

wget https://raw.githubusercontent.com/UTPPO/UnlockThePPO/main/crontab
sudo mv ~/dailyupdate.sh /usr/local/sbin/crontab

echo "done!"
