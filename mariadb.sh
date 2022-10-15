#!/bin/bash

sudo apt updte -y

sudo apt install -y mariadb-server mariadb-client

sudo systemctl status mariadb.service

sudo systemctl is-enabled mariadb.service

