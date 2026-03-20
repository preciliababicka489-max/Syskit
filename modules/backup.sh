#!/bin/bash
#Vérifier les paramètres
if [ "$1" != "backup" ] || [ -z "$2" ];
then 
	echo "Usage : ./syskit.sh backup <chemin/dossier>"
	exit 1
fi 
DIR="$2"

# Récupérer le nom du dossier
NAME=$(basename "$DIR")

# Ajouter la date
DATE=$(date +"%Y-%m-%d")

# Créer l'archive .tar
tar -cf "../backup/${NAME}_$DATE.tar" -C "$(dirname "$DIR")" "$(basename "$DIR")"

echo "Sauvegarde terminée"

