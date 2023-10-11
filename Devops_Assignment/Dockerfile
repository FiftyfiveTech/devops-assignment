# Use an official WordPress image as the base image
FROM wordpress:latest

LABEL maintainer="Bharat Dapke"
LABEL description="WordPress Dockerfile"

# Secure sensitive information (Replace with your own values)
ENV WORDPRESS_DB_HOST=mysql
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=wordpress
ENV WORDPRESS_DB_NAME=wordpress


EXPOSE 80
CMD ["apache2-foreground"]
