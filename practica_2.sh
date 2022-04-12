# ! /bin/bash
#Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y
# números telefónicos; y posterior imprima toda la información.
#Autor: Nicolas Martin

regexedad='^([1-9]{1,2})$'
regexnombre='^([A-z]{2,})$'
regexapellido='^([A-z]{2,})$'
regexdireccion='^([A-Z]*)'
regexnumero='^[0-9]{10})$'

echo "**************************"
echo "Ingresar datos personales:"
echo "**************************"

read -p "Inrese su nombre: " nombre
read -p "Inrese su Apellido: " apellido
read -p "Inrese su Edad: " edad
read -p "Inrese su Direccion: " direccion
read -p "Inrese su Telefono: " numero

echo -e "\nDatos ingresado:"

#Valido nombre
if [[ $regexnombre =~ $nombre ]]; then
  echo "El nombre es: $nombre"
else
  echo "El nombre no puede contener caracteres no validos"
fi

#Valido apellido
if [[ $regexapellido =~ $apellido ]]; then
  echo "El apellido es: $apellido"
else
  echo "El apellido no puede contener caracteres no validos"
fi

#Valido edad
if [[ $regexedad =~ $edad ]]; then
  echo "El edad es: $edad"
else
  echo "El edad no puede contener letras"
fi

#Valido direccion
if [[ $regexdireccion =~ $direccion ]]; then
  echo "El direccion es: $direccion"
else
  echo "El direccion no puede contener numero"
fi

#Valido telefono
if [[ $regexnumero =~ $numero ]]; then
  echo "El numero es: $numero"
else
  echo "El telefono no puede contener letras"
fi
