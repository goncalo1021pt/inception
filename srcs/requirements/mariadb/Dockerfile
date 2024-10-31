FROM debian:oldoldstable

RUN apt-get update && apt-get install -y mariadb-server
RUN apt-get install -y vim && apt-get install -y systemd

RUN mkdir -p /var/run/mysqld /var/lib/mysql && \
    chown -R mysql:mysql /var/run/mysqld /var/lib/mysql && \
    chmod -R 755 /var/run/mysqld /var/lib/mysql

WORKDIR /var/run/mysqld

EXPOSE 3306

CMD [ "tail", "-f", "/dev/null" ]