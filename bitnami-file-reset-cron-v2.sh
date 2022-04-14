#!/bin/bash
crontab -u bitnami -l > crontab_new
echo -e "*/15 * * * * /home/bitnami/oneninescripts/bitnami-file-reset-commands-v2.sh >> /home/bitnami/oneninescripts/bitnami-file-reset-cron-v2.log 2>&1\n" >> crontab_new
crontab -u bitnami crontab_new
rm crontab_new
