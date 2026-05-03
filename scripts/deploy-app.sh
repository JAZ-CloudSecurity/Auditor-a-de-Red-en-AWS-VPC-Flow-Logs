#!/bin/bash
# Script de despliegue de aplicación OWASP Juice Shop mediante Docker
# Basado en el laboratorio de Auditoría de Red - Entregable 7

# 1. Instalar Docker en Amazon Linux 2023
sudo yum install -y docker

# 2. Iniciar el servicio de Docker
sudo service docker start

# 3. Agregar el usuario actual al grupo docker (para ejecutar sin sudo)
# Nota: En el lab se usó: sudo usermod -aG docker ec2-user
sudo usermod -aG docker ec2-user

# 4. Descargar y ejecutar el contenedor de Juice Shop
# Se mapea el puerto 80 del host al 3000 del contenedor
sudo docker run --restart always -d -p 80:3000 bkimminich/juice-shop
