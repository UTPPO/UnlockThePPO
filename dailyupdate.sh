#!/bin/bash
# Update and Upgrade every Thursday at 1800

sudo apt update -y
sudo apt upgrade -y
shutdown 3
