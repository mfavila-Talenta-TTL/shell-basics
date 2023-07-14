#!/bin/bash

a=0

for word in $(cat lista_verduras); do
	if [ "$word" = "tomate" ];then
        	echo "encontre un tomate"
	else
        	((a=a+1))
	fi
done

echo $a

