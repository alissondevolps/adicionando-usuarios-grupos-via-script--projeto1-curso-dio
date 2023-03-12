#!/bin/bash

echo "#######################"
echo "Criando diretórios..."
echo "#######################"

mkdir /publico
mkdir /ADM
mkdir /VENDAS
mkdir /sec

echo "##############################"
echo "Criando grupos de usuários..."
echo "#############################"


groupadd GRP_ADM
groupadd GRP_VENDAS
groupadd GRP_SEC

echo "#######################"
echo "Criando usuários..."
echo "#######################"


useradd matheus -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM
useradd morgana-m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM
useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VENDAS
useradd roberta -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VENDAS
useradd luiz -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS

useradd priscila -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC
useradd joana -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC
useradd isaac -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC

echo "##############################################"
echo "Especificando permissões dos diretórios...."
echo "##############################################"


chown root:GRP_ADM /ADM
chown root:GRP_VEN /VENDAS
chown root:GRP_SEC /sec

chmod 770 /ADM
chmod 770 /VENDAS
chmod 770 /sec
chmod 777 /publico


echo "#######################"
echo "Fim do script....."
echo "#######################"
