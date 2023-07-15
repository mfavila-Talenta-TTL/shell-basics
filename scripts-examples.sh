#!/bin/bash

# 1. Script para realizar una copia de seguridad de un directorio:

# source_dir="$(pwd)"
# backup_dir="/projects"
# backup_file="backup_$(date +%Y%m%d).tar.gz"

# tar -czvf "$backup_dir/$backup_file" "$source_dir"


# 2. Script para renombrar archivos con una extensión específica en un directorio:

# directory="files"
# extension=".txt"
# new_extension=".dat"

# cd "$directory"
# for file in *"$extension"; do
#     mv "$file" "${file%$extension}$new_extension"
# done

# 3. Script para comprimir archivos antiguos en un directorio:

# directory="/ruta/directorio"
# age_in_days=30

# find "$directory" -type f -mtime +"$age_in_days" -exec gzip {} \;