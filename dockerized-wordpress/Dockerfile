# Use an official WordPress image as the base image
FROM wordpress:latest

# Set the maintainer label
LABEL maintainer="Ajay"

# Secure sensitive information using environment variables
ENV WORDPRESS_DB_HOST=db \
    WORDPRESS_DB_USER=your_db_user \
    WORDPRESS_DB_PASSWORD=your_db_password \
    WORDPRESS_DB_NAME=your_db_name

# Expose port 80 for HTTP
EXPOSE 80

# Start the WordPress application
CMD ["apache2-foreground"]

