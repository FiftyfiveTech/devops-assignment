# Use the official WordPress image as the base image
FROM wordpress:latest

# Set labels to provide metadata about the image
LABEL maintainer="Your Name <your.email@example.com>"
LABEL description="Docker image for WordPress"

# Set environment variables for WordPress
ENV WORDPRESS_DB_HOST=db:3306
ENV WORDPRESS_DB_USER=your_db_user
ENV WORDPRESS_DB_PASSWORD=your_db_password
ENV WORDPRESS_DB_NAME=your_db_name

# Copy custom themes or plugins into the WordPress themes or plugins directory
# Example:
# COPY custom-theme /var/www/html/wp-content/themes/
# COPY custom-plugin /var/www/html/wp-content/plugins/

# Expose port 80 for the web server
EXPOSE 80

# Healthcheck to ensure the container is healthy
HEALTHCHECK CMD curl -f http://localhost || exit 1

# Entry point command to start the WordPress application
CMD ["apache2-foreground"]
