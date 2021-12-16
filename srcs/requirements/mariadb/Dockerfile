FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY /tools/db.sql /etc/mysql/
COPY /tools/setup.sh /

CMD bash setup.sh