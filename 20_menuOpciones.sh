# ! /bin/bash
#Programa que permite manejar las utilidades del postgres
#Autor: Nicolas Martin

opcion=0

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
         1) echo -e "\n\nInstalar Postgres....."
            sleep 3 ;;
         2) echo -e "\n\nDesistanlando postgres....."
            sleep 3 ;;
         3) echo -e "\n\nSacando respaldo de la DB...."
            sleep 3 ;;
         4) echo -e "\n\nRestaurar respaldo de la DB...."
            sleep 3 ;; 
         5) echo -e "\n\nSalir del programa.."
            exit 0 ;;
    esac
done        




