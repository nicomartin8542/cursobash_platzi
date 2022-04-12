# ! /bin/bash
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
