#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo Error: must run as root
    exit
fi

echo install zip library
apt install -y zip

echo get repository
add-apt-repository ppa:ondrej/php
apt update
apt-get install -y software-properties-common

echo install apache server
apt install -y apache2

echo install curl library
apt install -y curl

echo install apache php library
apt install -y libapache2-mod-php

apt update

echo install php 5.6
apt install -y php5.6 php5.6-mysql php5.6-gd php5.6-intl php5.6-curl php5.6-mbstring php5.6-mcrypt php5.6-dom php5.6-zip php5.6-soap php5.6-bcmath

echo install php 7.0
apt install -y php7.0 php7.0-mysql php7.0-gd php7.0-intl php7.0-curl php7.0-mbstring php7.0-mcrypt php7.0-dom php7.0-zip php7.0-soap php7.0-bcmath

echo install php 7.1
apt install -y php7.1 php7.1-mysql php7.1-gd php7.1-intl php7.1-curl php7.1-mbstring php7.1-mcrypt php7.1-dom php7.1-zip php7.1-soap php7.1-bcmath

echo install php 7.2
apt install -y php7.2 php7.2-mysql php7.2-gd php7.2-intl php7.2-curl php7.2-mbstring php7.2-xml php7.2-zip php7.2-soap php7.2-bcmath

service apache2 restart
chmod +x vphp
cp vphp /usr/bin
echo completed
