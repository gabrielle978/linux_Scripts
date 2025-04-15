#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd gabi -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_ADM
useradd ana -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_ADM
useradd madu  -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_ADM

useradd bianca -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_VEN
useradd thais -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_VEN
useradd danilo -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_VEN

useradd camilli -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_SEC
useradd yasmin -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_SEC
useradd leticia -m -s /bin/bash -p $(openssl passwd  MyPasswd0000) -G GRP_SEC

echo "especificando permissões dos usuários aos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
