# ! /bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar
#Autor: Nicolas Martin

echo "Empaquetar todos los archivos de la carpeta shellcours "

tar -cvf shellCourse.tar *.sh
 
if [ $? = 0 ]; then
   
   echo "Se empaqueto los cursos correctamente"
else 
   echo "No se pudo empaquetar!"
fi


