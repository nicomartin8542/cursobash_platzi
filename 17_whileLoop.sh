# ! /bin/bash
#Programa para ejemplificar la sentencia de interacion  while loop
#Autor: Nicolas Martin

numero=1

while [ $numero -ne 10 ]
do 
   echo "Impŕimiendo $numero veces"
   numero=$((numero + 1))
done


