#! /bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar y gzip
#Autor: Nicolas Martin

echo "Empaquetar todos los archivos de la carpeta shellcours "

tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina. 
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 9_option.sh

