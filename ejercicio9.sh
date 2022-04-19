#!/bin/bash

echo -n "Extension del fichero: "
read extension
for fichero in *.$extension
do
	echo "Nombre de fichero: " $fichero
	cat $fichero
	echo ==================================
done
