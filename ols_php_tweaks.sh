#!/bin/bash

phpConfPath='/usr/local/lsws/lsphp80/etc/php/8.0/litespeed/php.ini'
memoryLimit='128M'
if [ -z $1 ]
then
memoryLimit='128M'
else 
memoryLimit=$1
fi

#enable .htaccess for Bitnami WordPress
sed  -e '/upload_max_filesize/s/.*/upload_max_filesize = 200M/' \
-e '/post_max_size/s/.*/post_max_size = 200M/' \
-e '/max_execution_time/s/.*/max_executiontime = 600/' \
-e '/max_input_time/s/.*/max_input_time = 600/'  \
-e "/memory_limit/s/.*/memory_limit = $memoryLimit/" \
-i.bak $phpConfPath

#setup php modules
apt-get update
apt-get install lsphp80-imagick lsphp80-intl -y

#install lscache plugin
sudo -u ubuntu -i -- wp plugin install litespeed-cache
#setup permissions
groupadd wordpress

usermod -aG wordpress ubuntu
usermod -aG wordpress nobody

chown -R nobody:wordpress /usr/local/lsws/wordpress

find /usr/local/lsws/wordpress -type d -exec chmod 0775 {} \;
find /usr/local/lsws/wordpress -type f -exec chmod 0664 {} \;
