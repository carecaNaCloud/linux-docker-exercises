#!/bin/bash


echo "Criando diretorórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando os usuários..."


#adm
useradd carlos 		-m -s /bin/bash -p $(openssl passwd carlos) 	-G GRP_ADM
useradd maria 		-m -s /bin/bash -p $(openssl passwd maria) 	-G GRP_ADM
useradd joao		-m -s /bin/bash -p $(openssl passwd joao) 	-G GRP_ADM

#ven
useradd debora 		-m -s /bin/bash -p $(openssl passwd debora) 	-G GRP_VEN
useradd sebastiana	-m -s /bin/bash -p $(openssl passwd sebastiana)	-G GRP_VEN
useradd roberto		-m -s /bin/bash -p $(openssl passwd roberto) 	-G GRP_VEN

#sec
useradd josefina	-m -s /bin/bash -p $(openssl passwd josefina) 	-G GRP_SEC
useradd amanda		-m -s /bin/bash -p $(openssl passwd amanda) 	-G GRP_SEC
useradd rogerio		-m -s /bin/bash -p $(openssl passwd rogerio) 	-G GRP_SEC


echo "Modificando permissões dos diretórios..."

# adm
chown root:GRP_ADM /adm 
chmod 770 /adm

# ven
chown root:GRP_VEN /ven
chmod 770 /ven

# sec
chown root:GRP_SEC /sec
chmod 770 /sec

#ven
chmod 777 /publico


echo "Finalizado..."
