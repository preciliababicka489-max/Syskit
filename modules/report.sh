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

#Informations système
echo "" >> "$REPORT_FILE"
echo "Informations système" >> "$REPORT_FILE"
./modules/inventory.sh >> "$REPORT_FILE"

#Sauvegardes
echo "" >> "$REPORT_FILE"
echo "Sauvegardes" >> "$REPORT_FILE"

if [ -d "backup" ];
then
	ls backup >> "$REPORT_FILE"
else
	echo " Aucune sauvegarde trouvée" >> "$REPORT_FILE"
fi

#Nettoyage
echo "" >> "$REPORT_FILE"
echo "Nettoyage" >> "$REPORT_FILE"

if [ -f "logs/cleanup.log" ];
then
cat logs/cleanup.log >> "$REPORT_FILE"
else
	echo "Aucune information de nettoyage" >> "$REPORT_FILE"
fi
