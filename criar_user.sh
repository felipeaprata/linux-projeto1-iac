#!/bin/bash

echo "criando usuários"

useradd guest10 -c "Usuário convidado" -s /bin/bash -m 
passwd guest10
useradd guest11 -c "Usuário convidado" -s /bin/bash -m
passwd guest11
useradd guest12 -c "Usuário convidado" -s /bin/bash -m
passwd guest12


echo "Finalizando!"
