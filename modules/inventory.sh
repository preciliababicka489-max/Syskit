#/bin/bash
echo "===== INVENTAIRE DU SYSTEME =====" 
echo "Système d'exploitation :"
grep PRETTY_NAME /etc/os-release

echo "Version du noyau Linux"
uname -r

echo "Processeur :"
lscpu | grep "Model name"

echo "Mémoire RAM:"
free -h

echo "Espace disque :"
df -h /
