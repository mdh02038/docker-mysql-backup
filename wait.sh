#!/bin/bash

echo "Waiting for mysql"
until mysqladmin ping -h"$MYSQL_HOST" -P"$MYSQL_PORT" -uroot -p"$MYSQL_PASSWORD" &> /dev/null
do
  printf "."
  sleep 1
done

echo -e "\nmysql ready"

