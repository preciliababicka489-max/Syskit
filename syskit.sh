#!/bin/bash
case "$1" in
	inventory)
		./modules/inventory.sh
		;;
	backup)
		./modules/backup.sh
		;;
        cleanup)
		./modules/cleanup.sh
		;;
	report)
		./modules/report.sh
		;;
	*)
		echo "Commande invalide"
		;;
esac 
