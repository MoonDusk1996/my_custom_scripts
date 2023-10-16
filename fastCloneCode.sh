#!/bin/bash

# Verifica se o número de argumentos é válido
if [ $# -ne 2 ]; then
    echo "Uso: $0 <URL_do_Repositório> <Caminho_de_Destino>"
    exit 1
fi

repo_url="$1"
destination_path="$2"

# Extrai o nome do projeto da URL
project_name=$(basename "$repo_url")

# Remove a extensão .git, se estiver presente
project_name="${project_name%.git}"

# Cria o diretório de destino com o nome do projeto
full_destination_path="$destination_path/$project_name"

# Verifica se o git está instalado
if ! command -v git &> /dev/null; then
    echo "O Git não está instalado. Instale o Git para usar este script."
    exit 1
fi

# Clona o repositório para o caminho de destino
git clone "$repo_url" "$full_destination_path"
if [ $? -eq 0 ]; then
    echo "Repositório clonado com sucesso em '$full_destination_path'."
else
    echo "Falha ao clonar o repositório."
fi

# Abre o Visual Studio Code (assumindo que esteja instalado) no caminho de destino
lvim "$full_destination_path"

exit

