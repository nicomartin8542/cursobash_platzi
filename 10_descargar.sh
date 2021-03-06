11_ifelse.sh                                                                                        0000777 0001750 0001750 00000001214 14224054264 013034  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar el uso del if else
#Autor: Nicolas Martin

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cual es su nota (1-9):" notaClase
echo -e "\n"
if (($notaClase >= 7)); then
  echo "El alumno aprueba la materia"
else
  echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad:" edad
if [ $edad -le 18 ]; then
  echo "La persona no puede sufragar"
else
  echo "La persona puede sufragar"
fi

if [ $edad -le 18 ]; then
  echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else
  echo "La persona es adulta mayor"
fi
                                                                                                                                                                                                                                                                                                                                                                                    13_expresionesCondicionales.sh                                                                      0000777 0001750 0001750 00000001717 14224054264 016636  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar el uso de empresiones condicionales
#Autor: Nicolas Martin

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese su path:" pathArchivo


echo -e  "\nEpresiones Condicionales con numeros"

if [ $edad -lt 10 ]; then
   echo "La personsa es menor de edad" | lolcat
elif [ $edad -ge 10 ]  && [ $edad -le 17 ]; then
  echo "La persona es adolecente" | lolcat
else 
  echo "La persona es mayor" | lolcat
fi

echo -e  "\nEpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
   echo "La persona es americana" | lolcat 
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
  echo "La persona es de Sur de America" | lolcat
else 
  echo "Se desconoce la nacionalidad" | lolcat
fi

echo -e  "\nEpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
   echo "El directorio $pathArchivo existe" | lolcat
else  
  echo "El directorio no existe" | lolcat
fi                                                 14_sentenciaCase.sh                                                                                 0000777 0001750 0001750 00000000572 14224054264 014343  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar el uso de sentencia case
#Autor: Nicolas Martin

echo "Ejemplo de sentencia Case"

read -p "Ingrese una opcion [A - Z]: " opcion
echo -e "\n"


case $opcion in
  "A") echo -e "\nOperacion guardar archivo";; 
  "B") echo -e "\nOperacion eliminar archiv";;
  [C-Z]) echo -e "\Cualquier opcion ";;
  *) echo "opcion incorrecta" 
  ;;
esac
                                                                                                                                      15_arreglos.sh                                                                                      0000777 0001750 0001750 00000002024 14224054264 013407  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar el uso de los arreglos
#Autor: Nicolas Martin

arregloNumeros=(1 2 3 4 5 6)
arreglosCadenas=(Marco, Nicolas, Martin, Jorge)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"  
echo "Arreglo de Cadenas: ${arreglosCadenas[*]}" 
echo "Arreglo de Rangos : ${arregloRangos[*]}"   


#Imprimir los tama??os de los arreglos
echo "Tama??o Arreglo de Numeros: ${#arregloNumeros[*]}"  
echo "Tama??o Arreglo de Cadenas: ${#arreglosCadenas[*]}" 
echo "Tama??o Arreglo de Rangos : ${#arregloRangos[*]}"   

#Imprimir la posicion 3 del arreglo de numeros y cadenas
echo "Posicion 3 Arreglo de Numeros: ${arregloNumeros[3]}"  
echo "Posicion 3 Arreglo de Cadenas: ${arreglosCadenas[3]}" 
echo "Posicion 3 Arreglo de Rangos : ${arregloRangos[3]}"  

#A??adir y elminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "A??adir 20 en el Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tama??o arreglos de numeros: ${#arregloNumeros[*]}"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            16_forLoop.sh                                                                                       0000777 0001750 0001750 00000001244 14224054264 013215  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar la sentencia de interacion  for LOOP
#Autor: Nicolas Martin

arregloNumeros=(1 2 3 4 5 6)
arreglosCadenas=("Marco" "Nicolas" "Martin" "Jorge")
arregloRangos=({A..Z} {10..20})

echo "Iterar en la lista de numeros"
for i in ${arregloNumeros[*]}
do
   echo "Numero: $i"  
done


echo "Iterar en la lista de Cadenas"
for i in ${arreglosCadenas[*]}
do
   echo "Nombre: $i"  
done


echo "Iterar en archivos"
for i in * 
do
   echo "Arcivo: $i"  
done

echo "Iterar utilizando un comando"
for i in $(cd;ls)
do
   echo "Arcivo: $i" | lolcat 
done


echo "Iterar en formato tradicional"
for (( i=1; i<10; i++ ))
do
   echo "Numero: $i"
done

                                                                                                                                                                                                                                                                                                                                                            17_whileLoop.sh                                                                                     0000777 0001750 0001750 00000000326 14224054264 013540  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar la sentencia de interacion  while loop
#Autor: Nicolas Martin

numero=1

while [ $numero -ne 10 ]
do 
   echo "Imp??imiendo $numero veces"
   numero=$((numero + 1))
done


                                                                                                                                                                                                                                                                                                          18_forLoopAnidados.sh                                                                               0000777 0001750 0001750 00000000363 14224054264 014663  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar la sentencia de interacion  for LOOP
#Autor: Nicolas Martin

echo "Loops anidados"
for i in $(ls)
do
    
    for nombre in {1..4} 
    do
      echo "Nombre Archivo: $i _ $nombre"
    done
    
done

                                                                                                                                                                                                                                                                             19_breakeContinue.sh                                                                                0000777 0001750 0001750 00000000607 14224054264 014540  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar el uso de breake y continue
#Autor: Nicolas Martin

echo "Sentencias break y continue"
for i in $(ls)
do
    
    for nombre in {1..4} 
    do
      if [ $i = "10_descargar.sh" ]; then
          break;
      elif [[ $i  == 4* ]]; then
          continue;
      else
          echo "Nombre Archivo: $i _ $nombre" 
      fi
      
    done
    
done

                                                                                                                         1_practica.sh                                                                                       0000777 0001750 0001750 00000000275 14224054262 013276  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # !/bin/bash
# Programa para realizar algunas operaciones utilitarios de postgres
# crear variables de entorno en S.O. archivo bashrc

echo "Hola bienenvido al curso de programacion bash "
                                                                                                                                                                                                                                                                                                                                   20_menuOpciones.sh                                                                                  0000777 0001750 0001750 00000002215 14224054264 014233  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
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




                                                                                                                                                                                                                                                                                                                                                                                   21_mkdirTouch.sh                                                                                    0000777 0001750 0001750 00000001217 14224054264 013702  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar la creacion de archivos y directorios
#Autor: Nicolas Martin

echo "Archivos y directorios"


if [ $1 = 'd' ]; then
   
   mkdir -m 755 $2 2> /dev/null
   
   if [ $? = 0 ]; then
      chmod 777 $2
      echo -e "\nEl directorio se creo correctamente" 
      ls -la $2
   else 
      echo -e "\ne pudo crear el directorio"   
   fi
elif [ $1 = 'f' ]; then
    
    touch $2
    if [ $? = 0 ]; then
      chmod 777 $2
      echo -e "\nEl archivo se creo correctamente" 
      ls -la $2
    else 
      echo -e "\nNo se pudo crear el archivo"   
    fi
else 
    echo -e "\nNo existe la opcion seleccionada"    
fi
                                                                                                                                                                                                                                                                                                                                                                                 22_writeFile.sh                                                                                     0000777 0001750 0001750 00000000345 14224054264 013525  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar como se escribe en un archivo
#Autor: Nicolas Martin

echo "Escribir en un archivo"

echo "Ejemplo de escribir con el comando con echo" >> $1

#Edicion multilinea
cat <<EOM >>$1
$2
EOM


                                                                                                                                                                                                                                                                                           23_readFile.sh                                                                                      0000777 0001750 0001750 00000000720 14224054264 013304  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar como se se lee un archivo
#Autor: Nicolas Martin

echo "Leer en un archivo"

cat $1 
echo -e "\n Almacenar un valor en una variable "
valorCat=??cat $1??   
echo "$valorCat"

#Se utiliza una variable especial IFS (internal files separator) para evitar los espacios en blancos se recorten
#al inicio o al final
echo -e "\n Leer archivo linea por linea utilizando while"

while IFS= read linea
do 
   echo "$linea"
done < $1                                                24_operationFiles.sh                                                                                0000777 0001750 0001750 00000000635 14224054264 014562  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar las operaciones de un archivo
#Autor: Nicolas Martin

echo "Operaciones de crear un archivo"
mkdir -m 777 backupScripts

echo -e  "\nCopoar scriot del directorio actual a nuevo directorio"+
cp *.* backupScripts/
ls -la backupScripts/

echo -e  "\n Mover archivo de backupScripts a otra ubicacion"
mv backupScripts $HOME

echo -e  "\n Eliminar los archivos .TXT"
rm *.txt
                                                                                                   25_empaquetamientoTAR.sh                                                                            0000755 0001750 0001750 00000000474 14224060732 015337  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar
#Autor: Nicolas Martin

echo "Empaquetar todos los archivos de la carpeta shellcours "

tar -cvf shellCourse.tar *.sh
 
if [ $? = 0 ]; then
   
   echo "Se empaqueto los cursos correctamente"
else 
   echo "No se pudo empaquetar!"
fi


                                                                                                                                                                                                    26_gzip.sh                                                                                          0000755 0001750 0001750 00000000560 14224061223 012534  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                #! /bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar y gzip
#Autor: Nicolas Martin

echo "Empaquetar todos los archivos de la carpeta shellcours "

tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina. 
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 9_option.sh

                                                                                                                                                27_pbzip2.sh                                                                                        0000755 0001750 0001750 00000000475 14224061704 013003  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                #! /bin/bash
#Programa para ejemplificar el empaquetamiento con el comando pbzip
#Autor: Nicolas Martin

echo "Empaquetar todos los archivos de la carpeta shellcours "
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2


                                                                                                                                                                                                   2_variables_2.sh                                                                                    0000777 0001750 0001750 00000000176 14224054262 013702  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # !/bin/bash
# Definicion de variables tanto del fuente o del S.O.

echo "Opcion nombre pasada del script anteriror: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                  2_variables.sh                                                                                      0000777 0001750 0001750 00000000461 14224054262 013456  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # !/bin/bash
# Definicion de variables tanto del fuente o del S.O.

opcion=0
nombre=Nicolas

echo "Opcion: $opcion"
echo "Nombre: $nombre"

#Exportar la variables nombre para que este disponible a los demas procesos
export nombre

#Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                               3_tipoOperadores.sh                                                                                 0000777 0001750 0001750 00000001541 14224054262 014506  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
# Programa para revisar tipos de operadores
# Autor: Nicolas Martin

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Numeros: A=$numA y b=$numB"
echo "Sumar   A + B =" $((numA + numB))
echo "Restar  A - B =" $((numA - numB))
echo "Mult    A * B =" $((numA * numB))
echo "Div     A / B =" $((numA / numB))
echo "Resuduo A % B =" $((numA % numB))

echo -e "\nOperadores Relaciones"
echo "Numeros: A=$numA y b=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo -e "\nOperadores Asignacion"
echo "Numeros: A=$numA y b=$numB"
echo "Sumar  A += B =" $((numA += numB))
echo "Restar A -= B =" $((numA -= numB))
echo "Multi  A *= B =" $((numA *= numB))
echo "Div    A /= B =" $((numA /= numB))
                                                                                                                                                               4_arguments.sh                                                                                      0000777 0001750 0001750 00000000442 14224054262 013514  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el paso de argumentos
#Autor= Nicolas Martin

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de paramatros enviados es: $#"
echo "Los parametros enviados son: $*"
                                                                                                                                                                                                                              5_comandos.sh                                                                                       0000777 0001750 0001750 00000000463 14224054262 013316  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejecutar comandos dentro de un proceso
# Comandos para depurar un un bash "bash -x nombre_bash"

#primera forma
ubicacionActual=$(pwd)
#segunda forma
infoKernel=$(uname -a)

echo "La ubicacion actual es la siguiente $ubicacionActual"
echo "Informacion del kernel: $infoKernel"
                                                                                                                                                                                                             6_readEcho.sh                                                                                       0000777 0001750 0001750 00000000607 14224054262 013226  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar la captura de informacion del usuario
#utulizando el comando echo, read y $REPLY
#Autor: Nicolas Martin

option=0
backupName=""

echo "Programa Utilidades Postgres" |   lolcat
echo -n "Ingresar una opcion: "
read
opcion=$REPLY
echo -n "Ingresa el valor del archivo del backup:"
read
backupName=$REPLY
echo -n "Opcion:$opcion, backupname:$backupName"                                                                                                                         7_read.sh                                                                                           0000777 0001750 0001750 00000000536 14224054262 012431  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para ejemplificar la captura de informacion del usuario
#utulizando el comando read
#Autor: Nicolas Martin

option=0
backupName=""

echo "Programa Utilidades Postgres" |   lolcat
read -p "Ingresar una opcion: " option
read -p "Ingresa el valor del archivo del backup: " backupName
echo "Opcion:$option, backupname:$backupName"                                                                                                                                                                  8_validarInfo_2.sh                                                                                  0000777 0001750 0001750 00000000765 14224054262 014202  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para validar informacion ingresada por read con expresiones regulares
#Autor: Nicolas Martin

option=0
backupName=""
clave=""

echo "Programa para validar campos"
#Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"
read -n10 -p "Ingresar nombre del archivo backup: " backupName
echo -e "\nOpcion:$option, backupName: $backupName"
echo -e "\n"
read -s -p "Ingrese su clave:" clave
echo -e "\n"
echo -e "\nClave: $clave"
           8_validarInfo.sh                                                                                    0000777 0001750 0001750 00000001766 14224054262 013763  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Programa para validar informacion ingresada por read con expresiones regulares
#Autor: Nicolas Martin

identificacionRegex='^[0-9] {10}$'
paisRegex='^EC|COL|US|AR$'
fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

echo "Expresiones Regulares" | lolcat
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar una las iniciales de un pais [EC|COL|US|AR] : " pais
read -p "Ingresar una fecha de nacimiento [YYYYMMDD]: " fechaNacimiento

#valido identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
   echo "Identificacion $identificacion valida" | lolcat
else
   echo "identificacion $identificacion invalida" | lolcat
fi

#valido pais
if [[ $pais =~ $paisRegex ]]; then
   echo "pais $pais valido" | lolcat
else
   echo "pais $pais invalido" | lolcat
fi

#valido fechaNacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
   echo "fechaNacimiento $fechaNacimiento valida" | lolcat
else
   echo "fechaNacimiento $fechaNacimiento invalida" | lolcat
fi
          practica_2.sh                                                                                       0000777 0001750 0001750 00000002572 14224054264 013303  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
#Solicitar la informaci??n de cada uno de ustedes como nombres, apellidos, edad, direcci??n y
# n??meros telef??nicos; y posterior imprima toda la informaci??n.
#Autor: Nicolas Martin

regexedad='^([1-9]{1,2})$'
regexnombre='^([A-z]{2,})$'
regexapellido='^([A-z]{2,})$'
regexdireccion='^([A-Z]*)'
regexnumero='^[0-9]{10})$'

echo "**************************"
echo "Ingresar datos personales:"
echo "**************************"

read -p "Inrese su nombre: " nombre
read -p "Inrese su Apellido: " apellido
read -p "Inrese su Edad: " edad
read -p "Inrese su Direccion: " direccion
read -p "Inrese su Telefono: " numero

echo -e "\nDatos ingresado:"

#Valido nombre
if [[ $regexnombre =~ $nombre ]]; then
  echo "El nombre es: $nombre"
else
  echo "El nombre no puede contener caracteres no validos"
fi

#Valido apellido
if [[ $regexapellido =~ $apellido ]]; then
  echo "El apellido es: $apellido"
else
  echo "El apellido no puede contener caracteres no validos"
fi

#Valido edad
if [[ $regexedad =~ $edad ]]; then
  echo "El edad es: $edad"
else
  echo "El edad no puede contener letras"
fi

#Valido direccion
if [[ $regexdireccion =~ $direccion ]]; then
  echo "El direccion es: $direccion"
else
  echo "El direccion no puede contener numero"
fi

#Valido telefono
if [[ $regexnumero =~ $numero ]]; then
  echo "El numero es: $numero"
else
  echo "El telefono no puede contener letras"
fi
                                                                                                                                      practica_3.sh                                                                                       0000777 0001750 0001750 00000002625 14224054264 013303  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
# Solicitar que se ingrese un valor del 1 al 5.
# Seg??n el valor ingresado, hacer la validaci??n utilizando las condicionales e imprimir el resultado.
# Construir expresiones de validaci??n num??ricas, cadenas y archivos seg??n la opci??n ingresada.
#Autor: Nicolas Martin

echo "---------Ingrese una de estas opciones--------------"
echo "***************** 1- Digite edad *******************"
echo "***************** 2- Digite nombre******************"
echo "***************** 3- Digite resultado***************"
echo "***************** 4- Digite path *******************"
echo "***************** 5- Salir       *******************"
echo "**************************"

read -p "Inrese un valor (1-5):" opcion

case $opcion in

1)
  read -p "Digite edad: " edad
  if [ $edad = 29 ]; then
    echo "Edad correcta"
  else
    echo "Edad incorrecta"
  fi
  ;;
2)
  read -p "Digite nombre: " nombre
  if [ $nombre = 'Nicolas' || $nombre = 'nicolas' || $nombre = 'NICOLAS' ]; then
    echo "Nombre Correcto!"
  else
    echo "Nombre Incorrecto"
  fi
  ;;
3)
  read -p "Digite resultado (2*5): " resultado
  if [ $resultado = 10 ]; then
    echo "Valor correcto! "
  else
    echo "Valor incorrecto!"
  fi
  ;;
4)
  read -p "Digite un path valido: " path
  if [ -d $path ]; then
    echo "Path valido"
  else
    echo "Path no valido"
  fi
  ;;
5)
  echo "Se vemos!!"
  ;;

*)
  echo -e "\nOpcion incorrecta!"
  ;;

esac
                                                                                                           practica_4.sh                                                                                       0000777 0001750 0001750 00000004527 14224054264 013307  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
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
    echo "4. Informaci??n de Red"
    echo "5. Variables de Entorno Configuradas"
    echo "6. Informaci??n Programa"
    echo "7. Backup informaci??n"
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




                                                                                                                                                                         utilityHost.sh                                                                                      0000777 0001750 0001750 00000001345 14224060005 013620  0                                                                                                    ustar   nicolas                         nicolas                                                                                                                                                                                                                # ! /bin/bash
# Reto 1: Desarrollar un programa llamado utilityHost.sh,
# dentro de ??l vamos a declarar dos variables una llamada option,
# otra llamada result, vamos a inicializarles e imprimir sus valores.
#Autor: Nicolas Martin

option=$1
result=$2

echo -e "\nOption= $option"
echo -e "\nResult= $result"

#Reto 5: Modificar el archivo utilityHost.sh para escribir la 
#informaci??n solicitada a un archivo de log cuyo nombre ser?? log 
#donde yyyy representa el a??o, MM el mes, DD el d??a, HH la hora, 
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
