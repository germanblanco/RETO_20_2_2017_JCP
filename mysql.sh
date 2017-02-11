#!/bin/sh
sudo docker run -it --network=vnet --rm mysql/mysql-server:latest sh -c 'exec mysql -h"db1" -P"3306" -uroot -p"passwd"'
