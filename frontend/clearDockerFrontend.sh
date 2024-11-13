#!/bin/bash

# Parar e remover o container
docker stop frontend-nginx
docker stop frontend-frontend
docker rm frontend-nginx
docker rm frontend-frontend

# Remover a imagem
docker rmi frontend-nginx
docker rmi frontend-frontend

# Remover o volume
docker volume rm frontend_frontend

# Remover a rede
docker network rm my_network
