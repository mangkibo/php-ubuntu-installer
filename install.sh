#!/bin/bash

echo "get repository"
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt-get install -y software-properties-common

echo "install apache server"
sudo apt install -y apache2

echo "install curl library"
sudo apt install -y curl

echo "install apache php library"
sudo apt install -y libapache2-mod-php

sudo apt update

echo "install php 5.6"
sudo apt install -y php5.6 php5.6-mysql php5.6-intl php5.6-gd php5.6-intl php5.6-curl php5.6-mbstring php5.6-mcrypt php5.6-dom

echo "install php 7.0"
sudo apt install -y php7.0 php7.0-mysql php7.0-intl php7.0-gd php7.0-intl php7.0-curl php7.0-mbstring php7.0-mcrypt php7.0-dom

echo "install php 7.1"
sudo apt install -y php7.1 php7.1-mysql php7.1-intl php7.1-gd php7.1-intl php7.1-curl php7.1-mbstring php7.1-mcrypt php7.1-dom

echo "install php 7.2"
sudo apt install -y php7.2 php7.2-mysql php7.2-intl php7.2-gd php7.2-intl php7.2-curl php7.2-mbstring php7.2-mcrypt php7.2-dom



sudo service apache2 restart
sudo chmod +x vphp
sudo cp vphp /usr/bin
echo "completed"
