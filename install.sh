cat>/etc/apt/sources.list<<EOF
deb http://mirrors.aliyun.com/debian/ buster main non-free contrib
deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib
deb http://mirrors.aliyun.com/debian-security buster/updates main
deb-src http://mirrors.aliyun.com/debian-security buster/updates main
deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib
deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib
deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib
deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib
EOF
apt-get update && apt-get install -y vim

#Composer
php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
composer config -g repo.packagist composer https://packagist.phpcomposer.com

#Crontab
apt-get install -y cron
echo "* * * * * /usr/local/bin/php -r \"echo date('Y-m-d H:i:s').PHP_EOL;\" >> /var/www/crontab.log" > /etc/cron.dcrontab_list
crontab /etc/cron.dcrontab_list

#File
rm -f /var/www/install.sh