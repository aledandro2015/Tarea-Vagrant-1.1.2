#!/bin/bash

# Antes de instalar apache vamos a actualizar los repositorios y luego instalaremos apache
apt-get update
apt-get install -y apache2

# Iniciamos y habilitamos el servicio de apache
systemctl start apache2
systemctl enable apache2

# Creamos la página de inicio con el hostname dinámico
echo "<h1>Servidor web de Alejandro</h1><p>Hostname de la maquina: $(hostname)</p>" > /var/www/html/index.html
