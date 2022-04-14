# one-nine-script
## Usage for latest Bitnami instance creation
```bash
mkdir /home/bitnami/oneninescripts && cd /home/bitnami/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-cron-v2.sh
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-commands-v2.sh
chown -R bitnami:bitnami /home/bitnami/oneninescripts/ && chmod +x bitnami-file-reset-cron-v2.sh && chmod +x bitnami-file-reset-commands-v2.sh
./bitnami-file-reset-cron-v2.sh > /dev/null 2>&1
```

## Usage for Ubuntu based OpenLiteSpeed WordPress instance creation.
## The ols 1 click install info will be saved in /home/ubuntu/output.txt which includes admin login info
## WordPress installation: 
### If you need to increase the php memory_limit property then add the correct memory value as a parameter into the script as shown below.
```bash
wget https://raw.githubusercontent.com/litespeedtech/ols1clk/master/ols1clk.sh && bash ols1clk.sh --wordpress --quiet > /home/ubuntu/output.txt
mkdir /home/ubuntu/oneninescripts && cd /home/ubuntu/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/ols_php_tweaks.sh
chmod u+x ols_php_tweaks.sh
./ols_php_tweaks.sh 256M > /dev/null 2>&1
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/ols_tweaks.sh
chmod u+x ols_tweaks.sh
./ols_tweaks.sh > /dev/null 2>&1
service lsws restart && killall lsphp
cd /home/ubuntu/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/ols_wpconfig_tweaks.sh
chmod u+x ols_wpconfig_tweaks.sh
./ols_wpconfig_tweaks.sh > /dev/null 2>&1
apt install unzip -y
cd /usr/local/lsws/Example/html
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-english.zip
unzip phpMyAdmin-latest-english.zip
mv phpMyAdmin-*/ phpmyadmin/
```
##
