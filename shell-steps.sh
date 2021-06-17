mkdir /home/bitnami/oneninescripts && cd /home/bitnami/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-cron.sh?token=AAOJI4W6VNIZ26JNHLSIXZDAZNJOQ
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-commands.sh?token=AAOJI4U7HRZZYTOMRFODJ2LAZNJQO
chown -R bitnami:bitnami /home/bitnami/oneninescripts/ && chmod +x bitnami-file-reset-cron.sh && chmod +x bitnami-file-reset-commands.sh
./bitnami-file-reset-cron.sh > /dev/null 2>&1
/opt/bitnami/apps/wordpress/bnconfig --disable_banner 1 && /opt/bitnami/ctlscript.sh restart apache
