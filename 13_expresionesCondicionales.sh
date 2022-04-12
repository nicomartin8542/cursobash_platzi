# ! /bin/bash
#Programa para ejemplificar el uso de empresiones condicionales
#Autor: Nicolas Martin

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese su path:" pathArchivo


echo -e  "\nEpresiones Condicionales con numeros"

if [ $edad -lt 10 ]; then
   echo "La personsa es menor de edad" | lolcat
elif [ $edad -ge 10 ]  && [ $edad -le 17 ]; then
  echo "La persona es adolecente" | lolcat
else 
  echo "La persona es mayor" | lolcat
fi

echo -e  "\nEpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
   echo "La persona es americana" | lolcat 
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
  echo "La persona es de Sur de America" | lolcat
else 
  echo "Se desconoce la nacionalidad" | lolcat
fi

echo -e  "\nEpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
   echo "El directorio $pathArchivo existe" | lolcat
else  
  echo "El directorio no existe" | lolcat
fi