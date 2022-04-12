# ! /bin/bash
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
