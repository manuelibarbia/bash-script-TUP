#!/bin/bash
#Pide una nota numerica y muestra la correspondiente alfabética usando case

echo "Introduce una nota"

read nota

case $nota in
	1|2|3|4)
		echo "Insuficiente"
	;;
	5)
		echo "Suficiente"
	;;
	6)
		echo "Bien"
	;;
	7|8)
		echo "Notable"
	;;
	9|10)
		echo "Sobresaliente"
	;;
esac

