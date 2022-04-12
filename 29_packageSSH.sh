#! /bin/bash
#Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync, utilizando
#las opciones de empaquetamiento para optimizar la velocidad de transferencia
#Autor: Nicolas Martin

echo "Empaquetar todos los scripts de carpeta de shellCourse con zip y transferirlos por la red a otro equipo"

read -p "Ingresar el host:" host
read -p "Ingresar el usuario" usuario

echo -e "\nEn este momento se procedera a empaquetar la carpeta y transferirla segun los datos ingresados"

rsync -avz $(pwd) $usuario@$host:/home/PR00684
