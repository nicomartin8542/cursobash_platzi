# ! /bin/bash
#Programa para ejemplificar la creacion de archivos y directorios
#Autor: Nicolas Martin

echo "Archivos y directorios"


if [ $1 = 'd' ]; then
   
   mkdir -m 755 $2 2> /dev/null
   
   if [ $? = 0 ]; then
      chmod 777 $2
      echo -e "\nEl directorio se creo correctamente" 
      ls -la $2
   else 
      echo -e "\ne pudo crear el directorio"   
   fi
elif [ $1 = 'f' ]; then
    
    touch $2
    if [ $? = 0 ]; then
      chmod 777 $2
      echo -e "\nEl archivo se creo correctamente" 
      ls -la $2
    else 
      echo -e "\nNo se pudo crear el archivo"   
    fi
else 
    echo -e "\nNo existe la opcion seleccionada"    
fi
