FROM debian:oldstable

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld

WORKDIR /var/run/mysqld

COPY tools/entry.sh /usr/local/bin/entry.sh
RUN chmod +x /usr/local/bin/entry.sh

EXPOSE 3306

USER mysql

ENTRYPOINT [ "bash", "/usr/local/bin/entry.sh" ]
