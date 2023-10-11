# Official WordPress image as the base image
FROM wordpress:latest

# Working directory to the WordPress installation
WORKDIR /var/www/html

# Removing the default themes and plugins (It's an optional, based on your requirements)
RUN rm -rf wp-content/themes \
    && rm -rf wp-content/plugins

# You can Add custom themes, plugins, or any other files to the WordPress installation
# Example: ADD custom-theme wp-content/themes/custom-theme

# Set appropriate labels
LABEL maintainer="Dnyanesh Desai <dnyaneshdesai52@gmail.com>"
LABEL version="2.1.0"
LABEL description="Version 2.1.0: Introducing new feature X, improved performance, and bug fixes."

# Expose the necessary port (default is 80)
EXPOSE 80

# Entry point command to start the WordPress application
CMD ["apache2-foreground"]
