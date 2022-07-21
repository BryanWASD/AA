#! usr/bin/bash

while [[ $rsp != 4 ]]; do
echo "Seleccione que operacion desea realizar"
echo "1-. Area de un cuadrado"
echo "2-. Area de un circulo"
echo "3-. Area de un triangulo"
echo "4-. Salir"
read -p "Seleccione una opcion: " rsp
	if [ $rsp = 1 ]
	then
	echo "Ingrese los siguientes datos para el area del cuadrado"
	read -p "Ingrese el lado del cuadrado: " l
	i=$(( l * l ))
	echo "El area del cuadrado es: "
	echo $i
	echo ""
	elif [ $rsp = 2 ]
	then
	echo "Ingrese los siguientes datos para el area del circulo"
	read -p "Ingrese el radio del circulo: " r
	pi=3.1416
	echo "El area del circulo es: "
	echo "$pi * ($r * $r)" | bc
	echo ""
	elif [ $rsp = 3 ]
	then
	echo "Ingrese los siguientes datos para el area del triangulo"
	read -p "Ingrese la base del triangulo: " b
	read -p "Ingrese la altura del triangulo: " h
	i=$(( ( b * h ) / 2 ))
	echo "El area del triangulo es: "
	echo $i
	echo ""
	elif [ $rsp != 1 -a $rsp != 2 -a $rsp != 3 -a $rsp != 4 ]
	then
	echo "Opcion invalida"
	echo ""
	fi
done