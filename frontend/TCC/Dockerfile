# Use uma versão específica do Node.js para garantir a consistência
FROM node:14

WORKDIR /tmp/react

# Copie apenas os arquivos necessários para instalar dependências
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código
COPY . .

# Construa o projeto
RUN npm run build

# Crie o diretório de destino e mova os arquivos construídos
RUN mkdir -p /var/www/html && mv build/* /var/www/html

# Limpe os arquivos temporários
WORKDIR /
RUN rm -rf /tmp/react

WORKDIR /var/www/html

# Defina o ponto de montagem do volume
VOLUME /var/www/html

