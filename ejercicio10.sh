#!/bin/bash
#Necesita dos parámetros que son dos números
#– comprobar que se han puesto dos y solo dos, en caso contrario, indicar mensaje correspondiente:
#– ningún parámetro -> Quiere introducirlos ahora s/n
#– 1 parámetro->quiere introducir el otro s/n
#– >2 parámetros–> demasiados parámetros, utilizaremos los 2 primeros
#2 -> CORRECTO
#Realiza las 4 operaciones básicas

case $#
in
	0)
		echo No ha introducido ninguno
		echo -n "Quiere ahora s/n?"
		read resp
		if [ $resp == "s" ]
		then
			echo -n Num1:
			read num1
			echo -n Num2:
			read num2
			echo HAGO OPERACIONES
		else
			exit 1 # no pongo nada
		fi;;
	1)
		echo Ha introducido uno
		echo -n "Quiere ahora s/n?"
		read resp
		if [ $resp == "s" ]
		then
			echo -n Num2:
			read num2
			num1=$1
			echo HAGO OPERACIONES
		else
			exit 2 # pongo solo 1
		fi;;
	2)
		num1=$1
		num2=$2
		echo HAGO OPERACIONES;;
	*)
		num1=$1
		num2=$2
		echo Demasiados parametros, cojo 2 primeros
		echo HAGO OPERACIONES;;
esac
echo $num1 + $num2 = $(($num1 + $num2))
echo $num1 - $num2 = $(($num1 - $num2))
echo $num1 "*" $num2 = $(($num1 * $num2))
echo $num1 "/" $num2 = $(($num1 / $num2))
# y así el resto de operaciones
