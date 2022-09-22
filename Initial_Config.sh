#!/bin/bash

sudo apt update -y
sudo apt full-upgrade -y

sudo timedatectl set-timezone America/Denver

wget https://raw.githubusercontent.com/UTPPO/UnlockThePPO/main/dailyupdate.sh
sudo chmod +x ./dailyupdate.sh
sudo mv ./dailyupdate.sh /usr/local/sbin/dailyupdate.sh

wget https://raw.githubusercontent.com/UTPPO/UnlockThePPO/main/crontab
sudo chown root ./crontab
sudo chgrp root ./crontab
sudo mv ./crontab /etc/crontab

curl https://getcroc.schollz.com | bash

echo "done!"
