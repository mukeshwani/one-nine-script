#!/bin/bash
httpdConfPath='/usr/local/lsws/conf/httpd_config.conf'

grep -q -e 'autoLoadHtaccess' $httpdConfPath || sed '/^tuning.*{.*/iautoLoadHtaccess          1' -i.bak $httpdConfPath