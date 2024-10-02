FROM alpine:3.19

WORKDIR /app
	
RUN apk update && \
    apk add --no-cache mariadb mariadb-client mariadb-server-utils

EXPOSE 4200

COPY my.cnf /etc/my.cnf

ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

RUN mkdir /run/mysqld && \
    chown mysql:mysql /run/mysqld && \
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
    
CMD ["mysqld", "--user=mysql"]