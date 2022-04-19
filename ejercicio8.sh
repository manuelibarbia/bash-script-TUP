#!/bin/bash
# Pide números hasta que se pulse el 999, y finalmente
# me indica si quiero ver los números introducidos.
# Si indico que si, me pregunta (O)rden establecido,
# (A)scendente, (D)escendente

numero=0
until [ $numero -eq 999 ]
do
	echo "Ingrese un número, 999 para salir."
	read numero
	if [ $numero -ne 999 ]
	then
		echo $numero>>numeros.txt
	fi
done

echo "¿Quiere ver los números ingresados? y/n"
read respuesta

if [ "$respuesta" == "y" ] || [ "$respuesta" == "Y" ];
then
	echo "Orden establecido, ascendente o descendente: o/a/d"
	read orden
	case $orden
	in
		o|O)
			cat numeros.txt;;
		a|A)
			cat numeros.txt | sort -n;;
		d|D)
			cat numeros.txt | sort -n -r;;
		*)
			echo "Opción no válida";;
	esac

	echo "Programa finalizado"

else
	echo "Programa finalizado (no quiso ver números)"
fi

rm numeros.txt
