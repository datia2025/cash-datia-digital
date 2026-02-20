FROM nginx:alpine

# FROM nginx:alpine

# Copiamos los archivos del dashboard
COPY . /usr/share/nginx/html

# Copiamos la configuración nginx con autenticación
COPY nginx.conf /etc/nginx/conf.d/default.conf

# La clave se maneja en el JS del login.html

EXPOSE 80
