# ! /bin/bash
#Programa para ejemplificar la captura de informacion del usuario
#utulizando el comando read
#Autor: Nicolas Martin

option=0
backupName=""

echo "Programa Utilidades Postgres" |   lolcat
read -p "Ingresar una opcion: " option
read -p "Ingresa el valor del archivo del backup: " backupName
echo "Opcion:$option, backupname:$backupName"