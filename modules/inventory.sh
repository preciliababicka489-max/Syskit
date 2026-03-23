#!/bin/bash

#vérifier que la commande est bien "inventory"

if [ "$1" != "inventory" ] 
then 
	echo "Usage : ./syskit.sh inventory"
fi

echo "INFORMATIONS SYSTEME"

#Système d'exploitation
echo "Système d'exploitation :"
uname -o

#Version du noyau Linux
echo ""
echo "Version du noyau :"
uname -r

#Processeur
echo ""
echo "Processeur :"
lscpu | grep "Model name"

#Mémoire RAM
echo ""
echo "Mémoire RAM :"
free -h | grep "Mem"

#Espace disque
echo ""
echo "Espace disque :"
df -h /

#Adresse IP
echo ""
echo "Adresse IP"
hostname -I
