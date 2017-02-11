#!/bin/bash

/entrypoint.sh mysqld &
until mysql -uroot -ppasswd --execute="CREATE DATABASE reto1;"
do
  echo "Creating database failed. Trying again in three seconds ..."
  sleep 3
done
mysql -uroot -ppasswd reto1 --execute="CREATE USER 'presto'@'localhost' IDENTIFIED BY 'passwd';"
mysql -uroot -ppasswd reto1 --execute="GRANT ALL PRIVILEGES ON reto1 TO 'presto'@'localhost' WITH GRANT OPTION;"
mysql -uroot -ppasswd reto1 --execute="CREATE USER 'presto'@'%' IDENTIFIED BY 'passwd';"
mysql -uroot -ppasswd reto1 --execute="GRANT ALL PRIVILEGES ON reto1 TO 'presto'@'%' WITH GRANT OPTION;"
mysql -uroot -ppasswd reto1 --execute="FLUSH PRIVILEGES;"
mysql -h$HOSTNAME -upresto -ppasswd reto1 --execute="CREATE TABLE reto1 (creation_time DATETIME(6), insert_time DATETIME(6) );"
echo Done!!!!!
wait %1
