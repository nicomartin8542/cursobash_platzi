# ! /bin/bash
#Programa para ejemplificar la sentencia de interacion  for LOOP
#Autor: Nicolas Martin

echo "Loops anidados"
for i in $(ls)
do
    
    for nombre in {1..4} 
    do
      echo "Nombre Archivo: $i _ $nombre"
    done
    
done

