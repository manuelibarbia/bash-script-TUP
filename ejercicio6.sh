#!/bin/bash
#pide dos cadena, e indica
#Si la cadenaX (NO) está vacia
#Y compara ambas cadenas

echo "Ingrese una cadena"
read cadena1

echo "Ingrese otra cadena"
read cadena2

if [[ -z $cadena1 ]]
then
	echo "La cadena 1 esta vacia"
else
	echo "La cadena 1 no esta vacia"
fi

if [[ -z $cadena2 ]]
then
	echo "La cadena 2 esta vacia"
else
	echo "La cadena 2 no esta vacia"
fi

if [[ $cadena1=$cadena2 ]]
then
	echo "Las cadenas son iguales"
else
	echo "Las cadenas son distintas"
fi
