#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <diretório> <extensão>"
    exit 1
fi

directory="$1"
extension="$2"

# Use o comando 'find' para localizar e excluir todos os arquivos com a extensão especificada no diretório fornecido
find "$directory" -type f -name "*.$extension" -delete

echo "Arquivos .$extension foram deletados em $directory."

