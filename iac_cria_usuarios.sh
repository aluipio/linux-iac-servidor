#!/bin/bash

echo "Criando diretórios da repartição"

mkdir /publico
mkdir /rhu
mkdir /fpa
mkdir /arg

echo "Criando grupos por setor"

groupadd GRP_RHU
groupadd GRP_FPA
groupadd GRP_ARG

echo "Criando usuários e coloca nos grupos"

useradd anderson -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_RHU
useradd luiz -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_RHU
useradd paulo -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_RHU

useradd helder -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_FPA
useradd monica -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_FPA

useradd gildete -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ARG
useradd socorro -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ARG

echo "Definindo permissões dos diretórios...."

chown root:GRP_RHU /rhu
chown root:GRP_FPA /fpa
chown root:GRP_ARG /arg

chmod 777 /publico
chmod 770 /rhu
chmod 770 /fpa
chmod 770 /arg

echo "Execução finalizada"

