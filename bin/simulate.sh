#!/bin/bash

# Crear los archivos de 0001.txt a 1000.txt
for i in $(seq -f "%04g" 1 1000); do
    # Obtener la marca de tiempo actual
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    
    # Generar un número aleatorio entre 0 y 10 (cantidad de neutrinos)
    neutrinos=$((RANDOM % 11))

    # Crear el archivo con el nombre correspondiente y escribir los datos
    echo "$timestamp $neutrinos" > "../data/$i.txt"
done

