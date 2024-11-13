FROM nginx:1.21.6

# Remova a configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copie a configuração personalizada do Nginx
COPY nginx.conf /etc/nginx/conf.d/

COPY mime.types /etc/nginx/mime.types

# Exponha a porta 80 para o Nginx
EXPOSE 3000
