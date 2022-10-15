#!/bin/bash

wget -c http://wordpress.org/latest.tar.gz

tar -xzvf latest.tar.gz

sudo cp -R wordpress/ /var/www/html/

sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 775 /var/www/html/wordpress

cd /var/www/html/wordpress

mv wp-config-sample.php wp-config.php
