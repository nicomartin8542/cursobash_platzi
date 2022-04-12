# ! /bin/bash
#Programa para ejemplificar la captura de informacion del usuario
#utulizando el comando echo, read y $REPLY
#Autor: Nicolas Martin

option=0
backupName=""

echo "Programa Utilidades Postgres" |   lolcat
echo -n "Ingresar una opcion: "
read
opcion=$REPLY
echo -n "Ingresa el valor del archivo del backup:"
read
backupName=$REPLY
echo -n "Opcion:$opcion, backupname:$backupName"