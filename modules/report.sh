#!/bin/bash

#Vérifier que la commande est bien report

if [ "$1" != "report" ];
then
	echo "Usage : ./syskit.sh report"
	exit 1
fi


