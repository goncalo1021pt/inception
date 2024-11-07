#!/bin/bash

# Set up WordPress using WP-CLI

if [ ! -f /var/www/html/wp-config.php ]; then
    # Download WordPress
    wp core download --allow-root

    # Create wp-config
    wp config create --dbname="$SQL_DB" --dbuser="$SQL_USER" --dbpass="$SQL_PASS" --dbhost="$DB_HOST" --allow-root

    # Install WordPress
    wp core install --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_USER" --admin_password="$WP_PASS" --admin_email="$WP_ADMIN_EMAIL" --allow-root

fi
# Start PHP-FPM
php-fpm