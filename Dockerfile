# Use an official WordPress image as the base image
FROM wordpress:latest

LABEL maintainer="Pushkar Raj"

# Set environment variables for the database connection
ENV WORDPRESS_DB_HOST=mysql \
    WORDPRESS_DB_USER=admin \
    WORDPRESS_DB_PASSWORD=admin \
    WORDPRESS_DB_NAME=assignment_db


EXPOSE 80

# Copy custom configuration files if needed
# COPY custom-config.php /var/www/html/wp-content

# Healthcheck to ensure the container is healthy
HEALTHCHECK CMD curl --fail http://localhost || exit 1


# Set the working directory
WORKDIR /var/www/html

# Start the WordPress application
CMD ["apache2-foreground"]
