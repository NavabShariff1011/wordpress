#!/bin/bash

read -p "enter db name": databasename

export dbname=$databasename

sudo mysql -e "CREATE DATABASE $dbname;"

read -p  "enter user name": dbusername

export username=$USERNAME

read -p "enter password for user": PASSWD

export passwd=$PASSWD

sudo mysql -e "CREATE USER '$username'@'localhost' IDENTIFIED BY '$passwd';"

sudo mysql -e "GRANT ALL PRIVILEGES ON $dbname. * TO '$username'@'localhost' WITH GRANT OPTION;"

sudo mysql -e "FLUSH PRIVILEGES;"


