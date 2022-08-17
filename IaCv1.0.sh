#!/bin/bash

echo "Criando diretórios ..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários ... "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usários..."
useradd carlos -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bn/bash -p $(openssl passwd -crypt Senha123 -G GRP_SEC
useradd rogerio -m -s /bn/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico