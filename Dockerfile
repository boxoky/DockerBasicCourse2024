# Escohemos la version de ubuntu
ARG VERSION=18.04

# Declaramos la version de la imagen base
FROM ubuntu:${VERSION}

# Instalamos las dependeencias 
RUN apt-get update && apt-get install -y curl nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Creamos un directorio de trabajo
RUN mkdir /test-dir
ENV SHELL /bin/bash

# Exponemos le puerto 80 del contenedor
EXPOSE 80

# Iniciamos el servidor de Nginx
CMD ["nginx", "-g", "daemon off;"]
