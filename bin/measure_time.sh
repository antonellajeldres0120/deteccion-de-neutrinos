#!/bin/bash

# Usamos el comando 'date' para obtener el tiempo de inicio
start_time=$(date "+%s")

# Ejecutar el script simulate.sh para generar los archivos
bash simulate.sh

# Usamos el comando 'date' para obtener el tiempo de finalización
end_time=$(date "+%s")

# Calcular el tiempo total de ejecución
execution_time=$((end_time - start_time))

# Guardar el tiempo total de ejecución en el archivo performance.txt
# Usamos 'echo' para escribir en el archivo
echo "Tiempo total de ejecución: $execution_time segundos" > "../results/performance.txt"

# Usamos 'cat' para verificar el contenido del archivo performance.txt
cat "../results/performance.txt"

# Usamos 'git' para añadir, hacer commit y subir los cambios al repositorio
git add "../results/performance.txt"
git commit -m "Añadir performance.txt con el tiempo de ejecución"
git push origin main
