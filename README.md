# one-nine-script
## Usage for latest Bitnami instance creation
```bash
mkdir /home/bitnami/oneninescripts && cd /home/bitnami/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-cron-v2.sh
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/bitnami-file-reset-commands-v2.sh
chown -R bitnami:bitnami /home/bitnami/oneninescripts/ && chmod +x bitnami-file-reset-cron-v2.sh && chmod +x bitnami-file-reset-commands-v2.sh
./bitnami-file-reset-cron-v2.sh > /dev/null 2>&1
```
## Usage for Ubuntu based OpenLiteSpeed WordPress instance creation. The ols 1 click install info will be saved in /home/ubuntu/output.txt
```bash
wget https://raw.githubusercontent.com/litespeedtech/ols1clk/master/ols1clk.sh && bash ols1clk.sh --wordpressplus whfb.live --quiet > /home/ubuntu/output.txt
mkdir /home/ubuntu/oneninescripts && cd /home/ubuntu/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/ols_php_tweaks.sh
chmod u+x ols_php_tweaks.sh
./ols_php_tweaks.sh > /dev/null 2>&1
```
## If you need to increase the php memory_limit property then add the correct memory value as a parameter into the script as shown below. The ols 1 click install info will be saved in /home/ubuntu/output.txt
```bash
wget https://raw.githubusercontent.com/litespeedtech/ols1clk/master/ols1clk.sh && bash ols1clk.sh --wordpressplus whfb.live --quiet > /home/ubuntu/output.txt
mkdir /home/ubuntu/oneninescripts && cd /home/ubuntu/oneninescripts
wget -q https://raw.githubusercontent.com/mukeshwani/one-nine-script/main/ols_php_tweaks.sh
chmod u+x ols_php_tweaks.sh
./ols_php_tweaks.sh MEMBORY_VALUE > /dev/null 2>&1
```
##
```
wget https://raw.githubusercontent.com/litespeedtech/ols1clk/master/ols1clk.sh && bash ols1clk.sh --wordpressplus whfb.live --quiet > /home/ubuntu/output.txt
```
