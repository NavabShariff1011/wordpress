#!/bin/bash

sudo apt install -y php libapache2-mod-php php-mysql
sudo touch /var/www/html/info.php
cat << EOF > /var/www/html/info.php
   <?php
   // Show all information, defaults to INFO_ALL
   phpinfo();
   // Show just the module information.
   // phpinfo(8) yields identical results.
   phpinfo(INFO_MODULES);
   ?>
EOF

php -v
