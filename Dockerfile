# Use the official WordPress image as the base image
FROM wordpress:latest

# Set the maintainer label
LABEL maintainer="Ashwani_Kumar<ashwanikk56@gmail.com>"

# Optional: Define environment variables for WordPress configuration
 ENV WORDPRESS_DB_HOST=MySql
 ENV WORDPRESS_DB_USER=ashwanik56
 ENV WORDPRESS_DB_PASSWORD=Kumar786
 ENV WORDPRESS_DB_NAME=wordpress

# Customize PHP configuration by adding a custom php.ini file
COPY php.ini /d/55-Technology-devops-assingment/Dockerized_WordPress/php.ini
# Optional: Add any additional plugins or themes
COPY plugin.zip /var/www/html/wp-content/plugins/
COPY theme.zip /var/www/html/wp-content/themes/

# Copy custom configuration files
COPY wp-config.php /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for the web server
EXPOSE 80

# Command to run when the container starts
CMD ["apache2-foreground"]
