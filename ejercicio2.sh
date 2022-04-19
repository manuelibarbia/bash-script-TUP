#!/bin/bash
#Pide un usuario y un mensaje y envía el mensaje a dicho usuario

echo -n "usuario: "
read usuario
echo -n mensaje:
read mensaje
# REDIRECCIONAMIENTOS
echo $mensaje>mensaje.txt
write $usuario<mensaje.txt
# FILTROS
echo $mensaje | write $usuario
