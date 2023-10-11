FROM wordpress:latest
EXPOSE 80
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev
RUN docker-php-ext-install pdo_sqlite
WORKDIR /var/www/html
CMD ["apache2-foreground"]
