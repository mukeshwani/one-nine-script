#!/bin/bash
crontab -u bitnami -l > crontab_new
echo "*/15 * * * * /home/bitnami/oneninescripts/bitnami-file-reset-commands.sh >> /home/bitnami/oneninescripts/bitnami-file-reset-cron.log 2>&1" >> crontab_new
crontab -u bitnami crontab_new
rm crontab_new
