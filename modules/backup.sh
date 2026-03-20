#!/bin/bash

#vérifier si un argument est fourni 
if 
[ -z "$1" ];
then
	echo "Usage :./syskit.sh backup <chemin/dossier>"
	exit 1
fi

# Vérifier si le dossier existe
if
	[ !-d "$1" ];
then
	echo "Erreur: le dossier n'existe pas"
	exit 1
fi

# Créer le dossier s'il n'existe pas
 mkdir -p ../backup

# Récupérer le nom du dossier
NAME=$(basename "$1")

