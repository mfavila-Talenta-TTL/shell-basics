#!/bin/bash

# Definiendo variables

nombre="Fernando"
edad=34
PI=3.14159

# echo "Mi nombres es $nombre, tengo $edad, la constate PI tiene un valor aproximado de $PI"

# Capturar variables desde el prompt

echo "Ingrese su nombre:"
read nombre

echo "¡Hola, $nombre! ¿Cómo estás?"

# Variables Locales

HELLO=Hello
function hello {
    local HELLO=World
    echo $HELLO
}
echo $HELLO
hello
echo $HELLO

# Declarando Arreglos

nombres=("Juan" "María" "Pedro" "Fernando")

colores=()
colores[0]="Rojo"
colores[1]="Verde"
colores[2]="Azul"
