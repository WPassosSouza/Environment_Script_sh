#!/bin/bash

echo "Ambiente de AValiação - Docker No-Paladar "
echo "CONTAINER EM PRODUÇÃO"
 

sudo docker run -d --rm --name No-Paladar -p 8080:80 -v /home/willian/Documentos/No-Paladar-master:/var/www/html php:7.4-apache  

echo "CONTAINER PRONTO!"
