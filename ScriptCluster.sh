echo "Script - (v¹) *** Hadoop ***"
echo "################################"

echo "Instalação pacote do >> JAVA(JRE & JDK)"
sudo apt-get install default-jre
sudo ap-get install default-jre

echo "Instalando acesso - HDFS MapReduce"
sudo addgroup hadoop

echo "Adicionando Utilizador - nome = hadoopuser"

sudo adduser --ingroup hadoop hadoopuser
sudo adduser hadoopuser sudo

echo "Instalacao do SSH"

sudo apt-get install openssh-server

echo ""
echo "Aceder NÓ - COnfig SIngle-node ssh para aceder localhost"
echo ""
echo "Acesso ao Hadoop"
su - hadoopuser

echo "Gerar chave publica SSH para Hadoop"

ssh-keygen -t rsa -P ""

echo "Adicionando a chave"
 cat $HOME/ .ssh/id_rsa.pub >> $HOME/ .shh/authorized_keys

echo "Verificar se o SSH LOCALHOST esta FUnfando!!!"
ssh localhost

echo "Download - hadoop"

sudo wget -P /home/user/Desktop http://mirrors.sonic.net/apache/hadoop

echo "Mudando o diretorio para descompactar"

cd /home/user/Desktop
sudo tar xvzf hadoop-2.9.1.tar.gz

echo "move pasta do diretorio - usr/local/hadoop"

sudo mv hadoop-2.9.1 /usr/local/hadoop

echo "Atribuindo propriedades da pasta - hadoop"

sudo chown -R hadoopusr /usr/local

sudo gedit ~/.bash

export HADOOP HOME=/usr/local/hadoop
export PATH=$PATH:$HADDOP_HOME/bin
export PATH=$PATH:HADOOP_HOME/sbin
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME$HADOOP_HOME
export HADOOP_HDFS_HOE=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS=""
export HADOOP_CLASSPATH=${JAVA_HOME}/Lib/tools.jar

source ~/.bashrc

cd /usr/local/hadoop/etc/hadoop/
sudo gedit hadoop-env.sh

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

sudo gedit core-site.xml

