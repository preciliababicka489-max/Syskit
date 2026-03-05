# SysKit

SysKit est un script Bash permettant d'automatiser certaines tâches d'administration système sous Linux.

## Fonctionnalités

- inventory : afficher les informations système
- backup : sauvegarder un dossier
- cleanup : supprimer les fichiers temporaires
- report : générer un rapport système

## Installation

Cloner le dépôt :

git clone https://github.com/username/syskit.git

Entrer dans le dossier :

cd syskit

Rendre le script exécutable :

chmod +x syskit.sh

## Utilisation

Afficher les informations système :

./syskit.sh inventory

Sauvegarder un dossier :

./syskit.sh backup Documents

Nettoyer les fichiers temporaires :

./syskit.sh cleanup /tmp

Générer un rapport :

./syskit.sh report
