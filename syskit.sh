#!/bin/bash
case "$1" in
	inventory)
		./modules/inventory.sh "$1"
		;;
	backup)
		./modules/backup.sh "$1" "$2"
		;;
        cleanup)
		./modules/cleanup.sh "$1" "$2"
		;;
	report)
		./modules/report.sh "$1"
		;;
	*)
		echo "Commande invalide"
		;;
esac 
