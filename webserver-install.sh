#!/bin/bash

if (( $EUID != 0 )); then
    echo "Execute como administrador."
    exit
fi


apt update;
apt upgrade -y;

apt install apache2 unzip -y
cd /tmp
wget 'https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip'
unzip main.zip
cp -r linux-site-dio-main/* /var/www/html/
