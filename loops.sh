#!/bin/bash

# For  simple

for i in $(ls); do
	echo item: $i
done

# For con varaibles

# a=0

# for word in $(cat lista_verduras); do
# 	if [ $word = "tomate" ]; then
# 		echo "encontre un tomate"
# 	else
# 		((a = a + 1))
# 	fi
# done

# echo $a

# Iterando sobre un arreglo

nombres=("Juan" "María" "Pedro")

# for nombre in "${nombres[@]}"; do
#     echo "Nombre: $nombre"
# done

# While

COUNTER=20
# while [ $COUNTER -ge 10 ]; do
# 	echo The counter is $COUNTER
# 	let COUNTER-=1
# done

# Until

COUNTER=20
# until [ $COUNTER -lt 10 ]; do
# 	echo COUNTER $COUNTER
# 	let COUNTER-=1
# done
