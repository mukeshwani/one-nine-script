mkdir /home/bitnami/oneninescripts && cd /home/bitnami/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-cron.sh
wget -q https://github.com/mukeshwani/one-nine-script/raw/main/onenineInstanceCreation.sh
chmod +x bitnami-file-reset-cron.sh && chmod +x onenineInstanceCreation.sh
./bitnami-file-reset-cron.sh > /dev/null 2>&1
/opt/bitnami/apps/wordpress/bnconfig --disable_banner 1 && /opt/bitnami/ctlscript.sh restart apache
