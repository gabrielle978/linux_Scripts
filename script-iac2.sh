#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da página de apresentação..."
cd /tmp
wget https://github.com/gabrielle978/gabriellebassiquete.github.io/archive/refs/main.zip 
unzip main.zip
cd gabriellebassiquete.github.io
cp -R * /var/www/html/
