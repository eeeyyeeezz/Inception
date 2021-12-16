#!/bin/bash

sed -ie 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
sed -ie 's/#port/port/g' /etc/mysql/mariadb.conf.d/50-server.cnf

if [ ! -d /var/lib/mysql/DB ]
then
service mysql start
apt-get install -y gettext-base
envsubst < /etc//mysql/db.sql | mysql
mysqladmin -u root password $DB_ROOT_PASSWORD
service mysql stop
fi
chown -R mysql:mysql /var/lib/mysql

mysqld_safe