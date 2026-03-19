#!/bin/bash

#vérifier si un argument est fourni 
if 
[ -z "$1" ];
then
	echo "Usage :./syskit.sh backup <chemin/dossier>"
	exit 1
fi
