# ! /bin/bash
# Solicitar que se ingrese un valor del 1 al 5.
# Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.
# Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.
#Autor: Nicolas Martin

echo "---------Ingrese una de estas opciones--------------"
echo "***************** 1- Digite edad *******************"
echo "***************** 2- Digite nombre******************"
echo "***************** 3- Digite resultado***************"
echo "***************** 4- Digite path *******************"
echo "***************** 5- Salir       *******************"
echo "**************************"

read -p "Inrese un valor (1-5):" opcion

case $opcion in

1)
  read -p "Digite edad: " edad
  if [ $edad = 29 ]; then
    echo "Edad correcta"
  else
    echo "Edad incorrecta"
  fi
  ;;
2)
  read -p "Digite nombre: " nombre
  if [ $nombre = 'Nicolas' || $nombre = 'nicolas' || $nombre = 'NICOLAS' ]; then
    echo "Nombre Correcto!"
  else
    echo "Nombre Incorrecto"
  fi
  ;;
3)
  read -p "Digite resultado (2*5): " resultado
  if [ $resultado = 10 ]; then
    echo "Valor correcto! "
  else
    echo "Valor incorrecto!"
  fi
  ;;
4)
  read -p "Digite un path valido: " path
  if [ -d $path ]; then
    echo "Path valido"
  else
    echo "Path no valido"
  fi
  ;;
5)
  echo "Se vemos!!"
  ;;

*)
  echo -e "\nOpcion incorrecta!"
  ;;

esac
