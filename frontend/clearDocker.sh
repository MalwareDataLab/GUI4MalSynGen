#!/bin/bash

# Parar e remover todos os containers
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

# Remover todas as imagens
docker rmi $(docker images -q)

# Remover todos os volumes
docker volume rm $(docker volume ls -q)

# Remover todas as redes
docker network rm $(docker network ls -q)

# Limpar o cache de build
docker builder prune -a

# Limpar todos os dados do Docker (incluindo volumes)
docker system prune -a --volumes
