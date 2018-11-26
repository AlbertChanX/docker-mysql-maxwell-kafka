#!/bin/bash
set -e

echo "starting mysql"
mysqld --user=mysql start

echo "waiting for mysql start"
sleep 10

echo '1. import data....'
# docker exec -ti mysql_max bash -c "mysql < /mysql/schema.sql"
mysql < /mysql/schema.sql
echo 'end...'

sleep 2

# set 
echo '2 set psw...'
mysql < /mysql/privileges.sql
echo 'end...'

sleep 2

echo "restart mysql"
mysqld --user=mysql restart

tail -f /dev/null