# ! /bin/bash
# Programa para ejemplificar el paso de argumentos
#Autor= Nicolas Martin

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de paramatros enviados es: $#"
echo "Los parametros enviados son: $*"
