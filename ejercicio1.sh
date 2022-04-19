#!/bin/bash
#Crea un script que muestre el valor de 6 variables de entorno, de la forma
#La variable LOGNAME tiene el valor XXX

echo "La variable LOGNAME tiene el valor" $LOGNAME
echo "La variable HOME tiene el valor" $HOME
echo "La variable SHELL tiene el valor" $SHELL
echo "La variable PWD tiene el valor " $PWD
echo "La variable USER tiene el valor" $USER
echo "La variable SSH_TTY tiene el valor" $SSH_TTY
