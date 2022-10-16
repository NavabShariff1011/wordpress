#!/bin/bash

read -p "enter db name": databasename

export dbname=$databasename

sudo mysql -e "CREATE DATABASE $dbname;"

read -p  "enter user name": dbusername

export username=$dbusername

read -p "enter password for user": PASSWD

export passwd=$PASSWD

sudo mysql -e "CREATE USER '$username'@'localhost' IDENTIFIED BY '$passwd';"

sudo mysql -e "GRANT ALL PRIVILEGES ON $dbname. * TO '$username'@'localhost' WITH GRANT OPTION;"

sudo mysql -e "FLUSH PRIVILEGES;"

cat <<EOF > /var/www/html/wp-config-sample.php
<?php
define( 'DB_NAME', '$dbname' );

/** Database username */
define( 'DB_USER', '$username' );

/** Database password */
define( 'DB_PASSWORD', '$passwd' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

$table_prefix = 'wp_';
define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
EOF
