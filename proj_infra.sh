#!/bin/bash

echo "Criando os Diretórios"

mkdir /publico
chmod 777 /publico
mkdir /adm
chmod 770 /adm
mkdir /ven
chmod 770 /ven
mkdir /sec
chmod 770 /sec
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_ADM
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_ADM
useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_VEN
useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 abc123) -G GRP_SEC

echo "Finalizado!"
