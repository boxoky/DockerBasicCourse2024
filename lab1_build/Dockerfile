## Declarando la imagen base
ARG VERSION=20.04

## Traemos la imagen base de internet (DockerHub)
FROM ubuntu:${VERSION}

## Actualizamos el entorno e instalamos nginx 
RUN apt-get -y update && apt-get -y install nginx

## Copiamos las configuraciones para que funcione nginx
COPY default /etc/nginx/sites-available/default

## Exponemos el puerto 80 del contenedor y declaramos que trabajara con el protocolo tcp
EXPOSE 80/tcp

## Una vez corre el contenedor, corremos el servidor nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
