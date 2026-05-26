#PASO 1: utilizamos una imagen base oficial de Python
FROM python:3.12-slim

#PASO 2: establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

#PASO 3: copiamos el requeriments.txt
COPY requirements.txt /app

#PASO 4: instalar las dependencias
RUN pip install -r requirements.txt

#PASO 5: copiamos los archivos del proyecto al contenedor
COPY . /app

#PASO 6: ejecutamos la aplicacion
CMD ["python", "app.py"]