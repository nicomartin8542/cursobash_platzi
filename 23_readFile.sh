# ! /bin/bash
#Programa para ejemplificar como se se lee un archivo
#Autor: Nicolas Martin

echo "Leer en un archivo"

cat $1 
echo -e "\n Almacenar un valor en una variable "
valorCat=´cat $1´   
echo "$valorCat"

#Se utiliza una variable especial IFS (internal files separator) para evitar los espacios en blancos se recorten
#al inicio o al final
echo -e "\n Leer archivo linea por linea utilizando while"

while IFS= read linea
do 
   echo "$linea"
done < $1