# ! /bin/bash
#Programa para ejemplificar el uso de sentencia case
#Autor: Nicolas Martin

echo "Ejemplo de sentencia Case"

read -p "Ingrese una opcion [A - Z]: " opcion
echo -e "\n"


case $opcion in
  "A") echo -e "\nOperacion guardar archivo";; 
  "B") echo -e "\nOperacion eliminar archiv";;
  [C-Z]) echo -e "\Cualquier opcion ";;
  *) echo "opcion incorrecta" 
  ;;
esac
