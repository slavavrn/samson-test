#! /usr/bin/env bash

php -r "phpinfo();" | grep -m 1 --color=always "PHP Version"

sudo apt-get install -y php7.2

php -r "phpinfo();" | grep -m 1 --color=always "PHP Version"