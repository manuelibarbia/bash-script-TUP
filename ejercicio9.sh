#!/bin/bash
#Pide una extensión de fichero y muestra :
#Nombre fichero
#contenido fichero
#Muestra separador ======


echo -n "Extension del fichero: "
read extension
for fichero in *.$extension
do
	echo "Nombre de fichero: " $fichero
	cat $fichero
	echo ==================================
done
