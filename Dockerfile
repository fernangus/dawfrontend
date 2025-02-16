# Usa Debian como base
FROM debian:latest

# Etiqueta con tu email
LABEL org.opencontainers.image.authors="gustavofernandez@@iespacomolla.es"

# Actualiza repositorios e instala Apache
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y apache2 \
    && apt-get clean

# Habilitar módulos de Apache
RUN a2enmod rewrite

# Expón el puerto 80
EXPOSE 80

# Inicia Apache en primer plano
CMD ["apache2ctl", "-D", "FOREGROUND"]
