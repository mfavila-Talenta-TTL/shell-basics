#!/bin/bash

#Funcion simple

function quit {
  exit
}
function hello {
  echo Hello!
}
hello
echo foo

# Funcion con parametros

saludar_nombre() {
    nombre=$1
    echo "¡Hola, $nombre!"
    echo "Espero que tengas un gran día."
}

saludar_nombre "Juan"


obtener_suma() {
    local numero1=$1
    local numero2=$2
    local suma=$((numero1 + numero2))
    return $suma
}

# Llamada a la función
obtener_suma 5 3

# Capturar el valor devuelto por la función
resultado=$?

# Imprimir el resultado
echo "La suma es: $resultado"