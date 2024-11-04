#!/bin/bash

# Set up WordPress using WP-CLI
cd /var/www/html

# Download WordPress
wp core download --allow-root

# Create wp-config
wp config create --dbname="$DB_NAME" --dbuser="$DB_USER" --dbpass="$DB_PASSWORD" --dbhost="$DB_HOST" --allow-root

# Install WordPress
wp core install --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_ADMIN_EMAIL" --allow-root

# Start PHP-FPM
php-fpm