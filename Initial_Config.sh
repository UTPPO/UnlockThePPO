#!/bin/bash

sudo apt update -y
sudo apt full-upgrade -y

sudo timedatectl set-timezone America/Denver

wget https://raw.githubusercontent.com/UTPPO/UnlockThePPO/main/dailyupdate.sh
sudo chmod +x /home/$USER/dailyupdate.sh
sudo mv /home/$USER/dailyupdate.sh /usr/local/sbin/dailyupdate.sh

wget https://raw.githubusercontent.com/UTPPO/UnlockThePPO/main/crontab
sudo chown root /home/$USER/crontab
sudo chgrp root /home/$USER/crontab
sudo mv /home/$USER/crontab /etc/crontab

echo "done!"
