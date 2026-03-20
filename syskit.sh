#!/bin/bash
case "$1" in
	inventory)
		./modules/inventory.sh
		;;
	backup)
		./modules/backup.sh "$1" "$2"
		;;
        cleanup)
		./modules/cleanup.sh "$1" "$2"
		;;
	report)
		./modules/report.sh
		;;
	*)
		echo "Commande invalide"
		;;
esac 
