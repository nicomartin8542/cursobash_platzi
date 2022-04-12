# ! /bin/bash
#Programa para validar informacion ingresada por read con expresiones regulares
#Autor: Nicolas Martin

option=0
backupName=""
clave=""

echo "Programa para validar campos"
#Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"
read -n10 -p "Ingresar nombre del archivo backup: " backupName
echo -e "\nOpcion:$option, backupName: $backupName"
echo -e "\n"
read -s -p "Ingrese su clave:" clave
echo -e "\n"
echo -e "\nClave: $clave"
