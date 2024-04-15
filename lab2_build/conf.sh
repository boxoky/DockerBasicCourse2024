#!/bin/bash
sed -i "4i <title>Bienvenido a Docker $NAME !</title>" /usr/share/nginx/html/index.html
sed -i '15i <body style="background-color:'$COLOR';">' /usr/share/nginx/html/index.html
sed -i "17i <h1>Bienvenido a Docker $NAME !</h1>" /usr/share/nginx/html/index.html