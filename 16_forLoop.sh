# ! /bin/bash
#Programa para ejemplificar la sentencia de interacion  for LOOP
#Autor: Nicolas Martin

arregloNumeros=(1 2 3 4 5 6)
arreglosCadenas=("Marco" "Nicolas" "Martin" "Jorge")
arregloRangos=({A..Z} {10..20})

echo "Iterar en la lista de numeros"
for i in ${arregloNumeros[*]}
do
   echo "Numero: $i"  
done


echo "Iterar en la lista de Cadenas"
for i in ${arreglosCadenas[*]}
do
   echo "Nombre: $i"  
done


echo "Iterar en archivos"
for i in * 
do
   echo "Arcivo: $i"  
done

echo "Iterar utilizando un comando"
for i in $(cd;ls)
do
   echo "Arcivo: $i" | lolcat 
done


echo "Iterar en formato tradicional"
for (( i=1; i<10; i++ ))
do
   echo "Numero: $i"
done

