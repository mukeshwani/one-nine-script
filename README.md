# one-nine-script
# Usage
mkdir /home/bitnami/oneninescripts && cd /home/bitnami/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-cron-v2.sh
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-commands-v2.sh
chown -R bitnami:bitnami /home/bitnami/oneninescripts/ && chmod +x bitnami-file-reset-cron-v2.sh && chmod +x bitnami-file-reset-commands-v2.sh
./bitnami-file-reset-cron-v2.sh > /dev/null 2>&1
