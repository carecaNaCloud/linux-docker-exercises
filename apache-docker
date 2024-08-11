#!/bin/bash


echo "Atualizando o servidor... "
# apt update
# apt upgrade -y
# apt install apache2 -y
# apt install unzip -y


echo "Baixando arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip


echo "Adicionado arquivos ao apache... "
docker cp /tmp/linux-site-dio-main/ apache-server:/usr/local/apache2/htdocs/
docker exec -dti apache-server cp /usr/local/apache2/htdocs/linux-site-dio-main/* /usr/local/apache2/htdocs/
docker exec -dti apache-server rmdir /usr/local/apache2/htdocs/linux-site-dio-main


echo "Finalizado..."

