#! /bin/bash
#Programa para ejemplificar el empaquetamiento con el comando pbzip
#Autor: Nicolas Martin

echo "Empaquetar todos los archivos de la carpeta shellcours "
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2


