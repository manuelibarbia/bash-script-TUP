#! /bin/bash
# Realiza la pregunta 2+2? tres veces e indica Correcto, si acierta, o te quedan X intentos si no acierta.

intentos=1
quedan=3

while [ $quedan -gt 0 ]
do
	echo "¿Cuánto es 2 + 2?"
	read respuesta
	if [ $respuesta -eq 4 ]
	then
		echo "Correcto. Acertado en intento: $intentos"
		exit
	else
		quedan=$(($quedan-1))
		if [ $quedan -ne 0 ]
		then
			
			echo "Incorrecto. Queda/n $quedan intento/s."
		fi
	intentos=$(($intentos+1))
	fi
done

echo "Game over."
