#!/bin/bash

wget -c http://wordpress.org/latest.tar.gz

tar -xzvf latest.tar.gz

sudo cp -R wordpress/ /var/www/html/

sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 775 /var/www/html/wordpress


sudo mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
