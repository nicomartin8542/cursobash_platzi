# ! /bin/bash
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

