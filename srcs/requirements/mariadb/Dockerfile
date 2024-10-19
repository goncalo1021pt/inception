FROM debian:oldstable

RUN apt-get update && apt-get install -y mariadb-server
# RUN apt-get install -y systemd && apt-get install -y vim

# RUN mkdir -p /var/run/mysqld
# RUN chown -R mysql:mysql /var/run/mysqld

# RUN mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql

# WORKDIR /var/run/mysqld

# RUN /etc/init.d/mariadb start

# COPY mariadb.conf /etc/mysql/mariadb.conf.d/mariadb.cnf

# COPY ./tools/entry.sh /usr/local/bin/entry.sh
# RUN chmod +x /usr/local/bin/entry.sh

EXPOSE 3306

# ENTRYPOINT [ "bash", "/usr/local/bin/entry.sh" ]
CMD [ "tail", "-f", "/dev/null" ]