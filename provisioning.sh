#! /usr/bin/env bash

sudo apt-get install -y vim
sudo apt-get install -y wget
sudo apt-get install -y htop
sudo apt-get install -y tmux

# PHP5.6
sudo apt-get -y install apt-transport-https lsb-release ca-certificates
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt-get update
sudo apt-get -y install php5.6-fpm --no-install-recommends

# apache2 first - it will be moved to 8888
sudo apt-get install -y apache2
sudo cp /data/000-default.conf /etc/apache2/sites-available/000-default.conf
sudo cp /data/ports.conf /etc/apache2/ports.conf
sudo mkdir -p /var/www/apache2/html
sudo mv /var/www/html/* /var/www/apache2/html
sudo service apache2 restart

# nginx
sudo apt-get install -y nginx
sudo cp /data/nginx-default /etc/nginx/sites-available/default
sudo mkdir -p /var/www/nginx/html
sudo mv /var/www/html/* /var/www/nginx/html
sudo service nginx restart

# just in case, set the execution flag
sudo chmod +x /data/info.sh
sudo chmod +x /data/hello.php
sudo chmod +x /data/php-up-to-72.sh
