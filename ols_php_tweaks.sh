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
#sed  -e '/post_max_size/s/.*/post_max_size = 200m/' -i.bak $phpConfPath

#add cgipassauth directive to allow passing the authentication headers to external API endpoints. This is only if the CGIPassAuth is not present in the file
#grep -q -e 'CGIPassAuth' $wordpressVhostConfPath || sed '/^<Directory \"\/opt\/bitnami\/wordpress\">.*/a CGIPassAuth On' -i.bak $wordpressVhostConfPath
#grep -q -e 'CGIPassAuth' $wordpressVhostHttpsConfPath || sed '/^<Directory \"\/opt\/bitnami\/wordpress\">.*/a CGIPassAuth On' -i.bak $wordpressVhostHttpsConfPath

#in case CGIPassAuth is set to off then run this to turn in on.
#sed '/CGIPassAuth Off/s/Off/On/g' -i.bak $wordpressVhostConfPath
#sed '/CGIPassAuth Off/s/Off/On/g' -i.bak $wordpressVhostHttpsConfPath


#disable pagespeed. This is usually not needed if using other means for optimizations or using a smaller instance.
#sed -e '/Include conf\/pagespeed.conf/ s/^#*/#/' -i $httpdConfPath
#sed -e '/Include conf\/pagespeed_libraries.conf/ s/^#*/#/' -i.bak $httpdConfPath
