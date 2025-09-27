# Dockerfile para desarrollo de Aqua Patterns
FROM wordpress:6.4-php8.1-apache

# Instalar herramientas de desarrollo
RUN apt-get update && apt-get install -y \
    git \
    vim \
    nano \
    curl \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Configurar PHP para desarrollo
RUN echo "display_errors = On" >> /usr/local/etc/php/conf.d/development.ini \
    && echo "error_reporting = E_ALL" >> /usr/local/etc/php/conf.d/development.ini \
    && echo "log_errors = On" >> /usr/local/etc/php/conf.d/development.ini

# Configurar Apache para desarrollo
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Crear directorio para plugins
RUN mkdir -p /var/www/html/wp-content/plugins

# Configurar permisos
RUN chown -R www-data:www-data /var/www/html/wp-content

# Exponer puerto
EXPOSE 80

# Comando por defecto
CMD ["apache2-foreground"]
