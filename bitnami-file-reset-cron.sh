#!/bin/bash
crontab -l > crontab_new
echo "*/5 * * * * /home/bitnami/oneninescrits/onenineInstanceCreation.sh >> /home/bitnami/oneninescripts/bitnami-file-reset-cron.log 2>&1" >> crontab_new
crontab crontab_new
rm crontab_new
