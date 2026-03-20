#!/bin/bash

#Vérifier que la commande est bien cleanup
if [ "$1" != "cleanup" ];
then
	echo "usage : ./syskit.sh cleanup <chemin>"
	exit 1
fi

#Vérifier que le chemin est fourni 
if [ -z "$2" ];
then
	echo "usage : ./syskit.sh cleanup <chemin>"
	exit 1
fi

#Vérifier que le dossier existe
if [ ! -d "$2" ];
	then
		echo "erreur: le dossier n'existe pas"
		exit 1
fi

