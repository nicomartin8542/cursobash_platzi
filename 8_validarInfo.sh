# ! /bin/bash
#Programa para validar informacion ingresada por read con expresiones regulares
#Autor: Nicolas Martin

identificacionRegex='^[0-9] {10}$'
paisRegex='^EC|COL|US|AR$'
fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

echo "Expresiones Regulares" | lolcat
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar una las iniciales de un pais [EC|COL|US|AR] : " pais
read -p "Ingresar una fecha de nacimiento [YYYYMMDD]: " fechaNacimiento

#valido identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
   echo "Identificacion $identificacion valida" | lolcat
else
   echo "identificacion $identificacion invalida" | lolcat
fi

#valido pais
if [[ $pais =~ $paisRegex ]]; then
   echo "pais $pais valido" | lolcat
else
   echo "pais $pais invalido" | lolcat
fi

#valido fechaNacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
   echo "fechaNacimiento $fechaNacimiento valida" | lolcat
else
   echo "fechaNacimiento $fechaNacimiento invalida" | lolcat
fi
