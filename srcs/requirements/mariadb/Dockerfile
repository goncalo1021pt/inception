FROM debian:oldstable

RUN apt-get update -y && apt-get upgrade -y

WORKDIR /var/lib/mysql

RUN apt-get install -y mariadb-server

COPY tools/entry.sh /etc/entry.sh

ENTRYPOINT ["bash", "/etc/entry.sh"]