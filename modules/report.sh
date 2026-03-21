#!/bin/bash

#Vérifier que la commande est bien report

if [ "$1" != "report" ];
then
	echo "Usage : ./syskit.sh report"
	exit 1
fi

# Fichier de sortie dans le dossier reports
REPORT_FILE="reports/report.txt"
echo "RAPPORT SYSTEME" > "$REPORT_FILE"
