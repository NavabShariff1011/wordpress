#!/bin/bash

sudo apt update -y

sudo apt upgrade -y

sudo apt install -y apache2

#sudo systemctl status apache2

#we can edit the /etc/needrestart/needrestart.conf
#$nrconf{restart} = 'l'; to simply list the services that need restart.
