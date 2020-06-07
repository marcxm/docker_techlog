#!/bin/bash

#apachectl -D FOREGROUND | tee /tmp/docker.log &
/usr/sbin/service apache2 start | tee /tmp/docker.log

while [ true ]; do
 sleep 10
 rm /var/www/html/index.html
 cp -ax /mnt/techlog/. /var/www/html/.
 chown -R www-data:www-data /var/www/html/
done




