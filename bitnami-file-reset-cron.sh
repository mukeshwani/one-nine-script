#!/bin/bash
crontab -l > crontab_new
echo "*/30 * * * * onenineInstanceCreation.sh >> /home/bitnami/bitnami-file-reset-cron.log 2>&1" >> crontab_new
crontab crontab_new
rm crontab_new
