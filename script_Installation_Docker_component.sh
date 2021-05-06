#!/bin/bash

echo "INSTALAÇÃO DOCKER"
sudo apt-get update
sudo rm -rf /var/lib/docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install docker-ce
sudo apt-get upgrade
echo "--------------------------------------------------------------------------------------------------------------------------------------"

echo "INSTALAÇÃO DOCKER-COMPOSE"
echo "-->(CONFIGURAÇÃO DA VARIAVEL DE AMBIENTE) /usr/local/bin/docker-compose"
sudo apt-get update
sudo apt-get remove docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo apt-get upgrade
echo"---------------------------------------------------------------------------------------------------------------------------------------"
echo "INSTALAÇÃO APACHE"

sudo apt-get update
sudo apt-get install apache2-bin
sudo apt-get install apache2
sudo /etc/init.d/apache2
sudo apt-get upgrade
