#!/bin/bash
cat <<EOF > /etc/apache2/sites-available/000-default.conf

                     <VirtualHost *:80>
                        DocumentRoot /var/www/html/wordpress

                        ErrorLog ${APACHE_LOG_DIR}/error.log
                        CustomLog ${APACHE_LOG_DIR}/access.log
                     </VirtualHost>

       EOF 
