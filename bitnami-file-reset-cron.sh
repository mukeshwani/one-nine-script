#!/bin/bash
crontab -l > crontab_new
echo "*/30 * * * * onenineInstanceCreation.sh" >> crontab_new
crontab crontab_new
rm crontab_new
