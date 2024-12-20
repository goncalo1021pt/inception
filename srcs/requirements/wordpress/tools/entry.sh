#!/bin/bash

# Set up WordPress using WP-CLI

if [ ! -f /var/www/html/wp-config.php ]; then
    wp core download --allow-root
    wp config create --dbname=$SQL_DB --dbuser=$SQL_USER --dbpass=$SQL_PASS --dbhost=mariadb --allow-root
    wp core install --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADM_USER --admin_password=$WP_ADM_PASS --admin_email=$WP_ADM_EMAIL --allow-root
    wp user create $WP_USER_USER $WP_USER_EMAIL --user_pass=$WP_USER_PASS --role=author --allow-root
    wp theme install twentytwentyfour --activate --allow-root

fi

php-fpm7.4 -F