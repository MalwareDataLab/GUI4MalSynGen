#!/bin/bash

# Verifica se o Docker está instalado
if ! command -v docker &> /dev/null; then
  echo "Error: Docker is not installed."
  exit 1
fi

# Verifica se docker-compose está instalado e executa o compose
if docker compose --version &> /dev/null; then
  #docker compose pull
  docker compose up   # Executa em modo detached para manter o contêiner em execução
elif command -v docker-compose &> /dev/null; then
  #docker-compose pull
  docker compose up   # Executa em modo detached para manter o contêiner em execução
else
  echo "Error: docker-compose is not installed."
  exit 1
fi

# Desliga o contêiner quando o usuário pressionar Enter
docker compose down
