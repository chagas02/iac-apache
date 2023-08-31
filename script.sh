#!/bin/bash

echo "atualizando SO"
sudo apt update
sudo apt upgrade -y

echo "instalando o apache2"
sudo apt install apache2 -y

echo "Instalando o unzip"
sudo apt install unzip -y

echo "baixando a aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "copiando os arquivos"

sudo cp -R * /var/www/html/

