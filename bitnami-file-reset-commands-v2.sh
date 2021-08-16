#!/bin/bash

sudo chown -R bitnami:daemon /home/bitnami/stack/wordpress
sudo chown -R bitnami:daemon /bitnami/wordpress
sudo find /home/bitnami/stack/wordpress -type d -exec chmod 775 {} \;
sudo find /bitnami/wordpress -type d -exec chmod 775 {} \;
sudo find /home/bitnami/stack/wordpress -type f -exec chmod 664 {} \;
sudo find /bitnami/wordpress -type f -exec chmod 664 {} \;
