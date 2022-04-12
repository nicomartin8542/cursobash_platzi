# ! /bin/bash
#Programa para ejemplificar como se escribe en un archivo
#Autor: Nicolas Martin

echo "Escribir en un archivo"

echo "Ejemplo de escribir con el comando con echo" >> $1

#Edicion multilinea
cat <<EOM >>$1
$2
EOM


