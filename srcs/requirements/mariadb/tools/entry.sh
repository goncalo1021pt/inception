#!/bin/bash

if [ ! -d /var/lib/mysql/mysql ]; then

	service mariadb start;

	# wait for the service to start
	while true; do
		if [ -f /var/run/mysqld/mysqld.pid ]; then
			break;
		fi
		sleep 1;
	done

	mysql -u root -e "CREATE DATABASE IF NOT EXISTS $SQL_DB;"
	mysql -u root -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASS';"
	mysql -u root -e "GRANT ALL PRIVILEGES ON $SQL_DB.* TO '$SQL_USER'@'%' WITH GRANT OPTION;"
	ALTER USER 'root@localhost' IDENTIFIED BY $SQL_ROOT_PASS;
	mysql -u root -e "FLUSH PRIVILEGES;"

fi
mysqld --bind-address=0.0.0.0