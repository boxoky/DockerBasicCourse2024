## usando una imagen base dedicada para python
FROM python:3-alpine

# Cambiar el directorio de trabajo
WORKDIR /app

# Instalando las dependencias para la aplicación
COPY requirements.txt ./

RUN pip install -r requirements.txt
COPY . .

## exponiendo el puerto 5000 del contenedor
EXPOSE 5000
ENTRYPOINT [ "flask" ]
CMD ["run","--host","0.0.0.0","--port","5000"]