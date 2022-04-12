# ! /bin/bash
# Reto 1: Desarrollar un programa llamado utilityHost.sh,
# dentro de él vamos a declarar dos variables una llamada option,
# otra llamada result, vamos a inicializarles e imprimir sus valores.
#Autor: Nicolas Martin

read -p "Option= " option
read -p "Result= " result

#Reto 5: Modificar el archivo utilityHost.sh para escribir la 
#información solicitada a un archivo de log cuyo nombre será log 
#donde yyyy representa el año, MM el mes, DD el día, HH la hora, 
#mm los minutos y SS los segundos   
# Reto 6: Compirimir arhicov log creado y enviarlo por ssh a otra maquina

dateF=$(date +"%Y%m%d%H%m%s")
logfile="$1/log_$dateF.txt"
sudo touch $logfile
sudo chmod 777 $logfile
if [ $? = 0 ]; then
    sudo echo "$option $result" >> $logfile
    #cat $logfile
    cd $1 && zip -e logCompress.zip log*
    if [ $? = 0 ]; then
       echo -e "\n Se comprimio $logfile correctamente"
       echo -e "\n Se procedera a enviar el archivo por ssh"
       cd /home/nicolas/workspace/cursoBash && sudo ./29_packageSSH.sh
    else 
       echo -e "\n No se pudo comprimrir el archivo log"
    fi
    sudo rm "$logfile"
else 
    echo -e "\n No se pudo escibir el archivo" 
fi



