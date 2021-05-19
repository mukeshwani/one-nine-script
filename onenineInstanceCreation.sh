#!/bin/bash
chown -R bitnami:daemon /opt/bitnami/apps/wordpress/htdocs/
find /opt/bitnami/apps/wordpress/htdocs/ -type d -exec chmod 0775 {} \;
find /opt/bitnami/apps/wordpress/htdocs/ -type f -exec chmod 0664 {} \;
