FROM debian:oldstable-slim

# Install packages
RUN apt-get update && apt-get install -y curl \
 php-fpm php-mysql\
 php-mbstring php-xml php-gd php-curl php-zip php-xmlrpc php-soap php-intl php-cli php-ldap php-imap php-gmp php-bcmath php-imagick php-redis

RUN sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 9000|g' /etc/php/7.4/fpm/pool.d/www.conf

WORKDIR /var/www/html

# Install wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php
COPY tools/entry.sh /etc/wordpress.sh

ENTRYPOINT [ "bash", "/etc/wordpress.sh" ]