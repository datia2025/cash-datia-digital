FROM nginx:alpine

# Instalamos apache2-utils para poder generar el archivo .htpasswd
RUN apk add --no-cache apache2-utils

# Copiamos los archivos del dashboard
COPY . /usr/share/nginx/html

# Copiamos la configuración nginx con autenticación
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Generamos el archivo de credenciales (usuario: admin, clave: datia2026)
# Cambia 'datia2026' por la clave que desees ANTES de hacer el build
RUN htpasswd -bc /etc/nginx/.htpasswd admin datia2026

EXPOSE 80
