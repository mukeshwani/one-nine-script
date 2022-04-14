#!/bin/bash
httpdConfPath='/usr/local/lsws/conf/httpd_config.conf'

grep -q -e 'autoLoadHtaccess' $httpdConfPath || sed -e '/^tuning.*{.*/iautoLoadHtaccess          1' -i.bak $httpdConfPath
sed -e '/^extprocessor.*lsphp.*{/,/^}/ s/maxConns.*/maxConns                35/' \
-e '/^extprocessor.*lsphp.*{/,/^}/ s/PHP_LSAPI_CHILDREN.*/PHP_LSAPI_CHILDREN=35/' \
-i.bak $httpdConfPath


