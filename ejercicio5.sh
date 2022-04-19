#!/bin/bash
echo "Archivo:"

read archivo

if [[  -e $archivo ]]
then
	echo "El archivo existe"
	if [[ -b $archivo ]]
	then
		echo "Es un archivo especial de bloques"
		elif [[ -c $archivo ]]
		then
			echo "Es un archivo de caracteres"
		elif [[ -d $archivo ]]
		then
			echo "Es un directorio"
		elif [[ -f $archivo ]]
		then
			echo "Es un fichero ordinario"
		elif [[ -h $archivo ]]
		then
			echo "Es un archivo simbolico"
	fi
	if [[ -r $archivo ]]
	then
		echo "Tiene permiso de lectura"
		if [[ -w $archivo ]]
		then
			echo "Tiene permiso de escritura"
			if [[ -x $archivo ]]
			then
				echo "Tiene permiso de ejecucion"
			fi
		fi
	fi
else
	echo "El archivo no existe"
fi

