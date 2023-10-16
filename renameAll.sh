#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <diretório> <novo_nome>"
    exit 1
fi

directory="$1"
new_name="$2"
count=1

for arquivo in "$directory"/*; do
    if [ -f "$arquivo" ]; then
        extensao="${arquivo##*.}"
        novo_nome="$new_name$count.$extensao"
        mv "$arquivo" "$directory/$novo_nome"
        count=$((count + 1))
    fi
done

echo "Arquivos no diretório $directory foram renomeados para $new_nameX.extensao."


