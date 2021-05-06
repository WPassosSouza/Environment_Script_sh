#!/bin/bash

echo "############### CLUSTER KUBERNETES ################"

echo "Deslindo o swap"
swapoff -a

echo "Comentar a entrada da swap" 
nano /etc/fstab

echo "Instalando Docker"
curl -fsSL https://get.docker.com | bash

echo "Verifica a Versao do Docker"
docker --version

echo "Adicionar o Repositorio e a Chave"
curl -s http://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/source.list.d/kubernetes.list

echo "Atualizando Repositorio..."
sudo apt-get update

echo "Instalando Kubelet - KubeCTL, KubeAdm"
sudo apt-get install kubelet kubectl kubeadm -y
snap install kubelet kubectl kubeadm  --classic

echo "Inciando o CLuster - passar o ip do pc master"

kubeadm init --apiserver-advertise-address $(hostname -i)

mkdir -p $HOME/ .kube 
sudo cp -i /etc/kubernetes/admin.conf $HOME/ .kube/config
sudo chown $(id -u): $(id -g) $HOME/ .kube/config

kubectl get nodes

kubectl run nginx --image nginx --replicas 10

kubectl get pods -o wide



