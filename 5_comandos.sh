# ! /bin/bash
# Programa para ejecutar comandos dentro de un proceso
# Comandos para depurar un un bash "bash -x nombre_bash"

#primera forma
ubicacionActual=$(pwd)
#segunda forma
infoKernel=$(uname -a)

echo "La ubicacion actual es la siguiente $ubicacionActual"
echo "Informacion del kernel: $infoKernel"
