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
