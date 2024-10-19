# template for entry.sh

#!/bin/bash
chown -R mysql:mysql /var/lib/mysql
# ls -l /var/lib >> /tmp/errorlog
# pwd >> /tmp/errorlog
service mariadb start;
# echo $? >> /tmp/errorlog
tail -f /dev/null
#     service mariadb start;
#     sleep 3;

#     mysql -u root -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
#     mysql -u root -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
#     mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO \`${SQL_USER}\`@'%';"
#     mysql -u root -e "FLUSH PRIVILEGES";

#     mysqladmin -u root password "$SQL_PASSWORD"
#     mysqladmin -u root -p"$SQL_ROOT_PASSWORD" shutdown
#     echo    "DATABASE CREATED!!"

# exec mysqld_safe --bind-address=*