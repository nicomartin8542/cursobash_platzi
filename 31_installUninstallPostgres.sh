# ! /bin/bash
#Programa que permite manejar las utilidades del postgres
#Autor: Nicolas Martin

opcion=0
 
#funcion para instalar postgres
 instalar_postgres() {
   echo -e "\n Verificar instalacion de postgres: "
   which psql > /dev/null
   if [[ $? = 0 ]]; then
      echo -e "\nPostgres ya se encuntra instalado en el equipo"    
   else 
      read -s -p "Ingresar la contraseña de super usuario: " password      
      read -s -p "Ingresar la contraseña para postgres: " psqlPassword     
      echo "$password" | sudo -S apt update
      echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
      sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PSQLPASSWORD}';"
      echo "$password" | sudo -S systemctl enable postgresql.service
      echo "$password" | sudo -S systemctl start postgresql.service
   fi
   read -n 1 -s -r -p "PRESIONE CUALQUIER TECLA PARA CONTINUAR....."
}

#funcion para desistanlar postgres
desinstalar_postgres() {

which psql
if [[ $? = 0 ]]; then
  read -s -p "Ingresar la contraseña de super usuario: " password   
  echo -e "\n"
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
  echo "$password" | sudo -S rm -r -f /etc/postgresql
  echo "$password" | sudo -S rm -r -f /etc/postgresql-common
  echo "$password" | sudo -S rm -r -f /var/lib/postgresql
  echo "$password" | sudo -S userdel -r postgres
  echo "$password" | sudo -S groupdel postgresql
  read -n 1 -s -r -p "PRESIONE CUALQUIER TECLA PARA CONTINUAR....."
else
  echo -e "\nPostgres no esta instalado en el sistema..."
fi
}


#Funcion para sacar un respaldo
sacar_respaldo() {
   echo -e "\nSacar respaldo"
   echo -e "\nDirectorio Backup: $1 " 
}

#funcion para restuarar un respaldo
restaurar_respaldo() {
   echo -e "\nRestaurar respaldo"
   echo -e "\nDirectorio Respaldo: $1 " 
}


#while : (while infinito)
while : 
do
    #Limpiar pantalla
    clear
    #Desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "-----------------------------------------"
    echo "              Menu principal             "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar Respaldo"
    echo "4. Restaurar DB "
    echo "5. Salir"

    #leo datos del usuario
    read -n1 -p "Ingrese una opcion [1-5]: " opcion 
    
    #validar la opcion ingresada
    case $opcion in 
         1) 
            instalar_postgres
            sleep 3 ;;
         2) 
            desinstalar_postgres
            sleep 3 ;;
         3) 
            echo -e "\n"
            read -p "Directorio de backup: " directorioBackup
            if [ -d $directorioBackup ]; then
               sacar_respaldo $directorioBackup
            else 
               echo "No existe el directorio"   
            fi
            sleep 3 ;;
         4) 
            echo -e "\n"
            read -p "Directorio de respaldos: " directorioRespaldo
            if [ -d $directorioRespaldo ]; then
               restaurar_respaldo $directorioRespaldo
            else 
               echo -e  "\nNo existe el directorio"   
            fi
            sleep 3 ;; 
         5) 
            echo -e "\n\nSalir del programa.."
            exit 0 ;;
    esac
done        




