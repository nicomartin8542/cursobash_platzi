# !/bin/bash
# Definicion de variables tanto del fuente o del S.O.

opcion=0
nombre=Nicolas

echo "Opcion: $opcion"
echo "Nombre: $nombre"

#Exportar la variables nombre para que este disponible a los demas procesos
export nombre

#Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
