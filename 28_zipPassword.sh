#! /bin/bash
#Programa para ejemplificar el empaquetamiento con clave
#Autor: Nicolas Martin

echo "Empaquetar todos los scripts de carpeta de shellCourse con zip y asiganarle una clave de seguridad "

zip -e shellCourse.zip *.sh
