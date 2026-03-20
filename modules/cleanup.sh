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

COUNT=0

#Parcours des fichiers du dossier
 for file in "$2"/*; 
do 

#Vérifier si le fichier est un .tmp ou .log
if [[ "$file" == *.tmp || "$file" == *.log ]];
then
	rm -f "$file" 
	echo "supprimé: $file"
#Compteur 
COUNT=$((COUNT+1))
fi
done 

#Résultat final
echo "Nombre de fichiers supprimés est : $COUNT"
