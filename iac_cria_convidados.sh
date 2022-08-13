#!/bin/bash


echo "Criando usuários convidados"

useradd guest1 -c "Usuário convidado 1" -s /bin/bash -m -p $(openssl passwd -crypt 123456)
passwd guest1 -e

useradd guest2 -c "Usuário convidado 2" -s /bin/bash -m -p $(openssl passwd -crypt 123456)
passwd guest2 -e

useradd guest3 -c "Usuário convidado 3" -s /bin/bash -m -p $(openssl passwd -crypt 123456)
passwd guest3 -e

echo "Execução Finalizada"

