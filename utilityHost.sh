# ! /bin/bash
# Reto 1: Desarrollar un programa llamado utilityHost.sh,
# dentro de él vamos a declarar dos variables una llamada option,
# otra llamada result, vamos a inicializarles e imprimir sus valores.
#Autor: Nicolas Martin

option=$1
result=$2

echo -e "\nOption= $option"
echo -e "\nResult= $result"

#Reto 5: Modificar el archivo utilityHost.sh para escribir la 
#información solicitada a un archivo de log cuyo nombre será log 
#donde yyyy representa el año, MM el mes, DD el día, HH la hora, 
#mm los minutos y SS los segundos

dateF=$(date +"%Y%m%d%H%m%s")
logfile="log_$dateF.txt"
touch $logfile
if [[ $? = 0 ]]; then
    echo "$1 $2" >> $logfile
    cat $logfile
else 
    echo -e  "\n No se pudo escibir el archivo" 
fi
