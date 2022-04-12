# ! /bin/bash
#Programa para ejemplificar el uso de los arreglos
#Autor: Nicolas Martin

arregloNumeros=(1 2 3 4 5 6)
arreglosCadenas=(Marco, Nicolas, Martin, Jorge)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"  
echo "Arreglo de Cadenas: ${arreglosCadenas[*]}" 
echo "Arreglo de Rangos : ${arregloRangos[*]}"   


#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Numeros: ${#arregloNumeros[*]}"  
echo "Tamaño Arreglo de Cadenas: ${#arreglosCadenas[*]}" 
echo "Tamaño Arreglo de Rangos : ${#arregloRangos[*]}"   

#Imprimir la posicion 3 del arreglo de numeros y cadenas
echo "Posicion 3 Arreglo de Numeros: ${arregloNumeros[3]}"  
echo "Posicion 3 Arreglo de Cadenas: ${arreglosCadenas[3]}" 
echo "Posicion 3 Arreglo de Rangos : ${arregloRangos[3]}"  

#Añadir y elminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Añadir 20 en el Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglos de numeros: ${#arregloNumeros[*]}"