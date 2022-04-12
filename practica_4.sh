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
    echo "Reto 4: Menu de opciones"
    echo "-----------------------------------------"
    echo "              Menu principal             "
    echo "-----------------------------------------"
    echo "1. Procesos Actuales "
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de Red"
    echo "5. Variables de Entorno Configuradas"
    echo "6. Información Programa"
    echo "7. Backup información"
    echo "8. Salir"


    #leo datos del usuario
    read -n1 -p "Ingrese una opcion [1-8]: " opcion 
    
    #validar la opcion ingresada
    case $opcion in 
         1) echo -e "\n\nProcesos actuales....."
            sleep 3 ;;
         2) echo -e "\n\nMemoria disponible....."
            sleep 3 ;;
         3) echo -e "\n\nMostrando espacio de disco...."
            sleep 3 ;;
         4) echo -e "\n\nMostrando informacion de la red"
            sleep 3 ;; 
         5) 
            varEntornos=$( env > prueba.txt && cat prueba.txt )
            echo -e "\n $varEntornos" ;;
         6) 
            echo -e "\n"
            read -p "Ingrese el la path del programa:" pgm
            if [ -d $pgm ]; then
               echo -e "\n\nInformacion del pograma introducido es.... $pgm" 
            else
               echo -e "\nEl programa no existe" 
            fi 

            sleep 2 ;;
            
         7) 
            numero=0
            echo -e "\n"
            read -p "Ingrese el path a realizar el backup: " backup
            if [ -d $backup ]; then
               
               while [ $numero -le 100 ]
               do 
                  sleep 0.1
                  echo -ne "\r\rRealizando backup... ###############[$numero%]" 
                  numero=$((numero + 1))
                  
               done   
               echo -e "\nEl backup se realizo con exito"
            else  
               echo -e "\nEl path es invalido..."
            fi
            sleep 3 ;; 
         8) echo -e "\n\nSalir del programa.."
            exit 0 ;;

         *) echo -e  "\n\nOpcion no valida "   | lolcat
            sleep 2
    esac
done        




