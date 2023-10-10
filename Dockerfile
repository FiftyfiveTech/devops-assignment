# Use official WordPress image as the base image
FROM wordpress:latest

# Set author label
LABEL maintainer="souvik9733848376@gmail.com"

# Expose port 80
EXPOSE 80

# Command to run when the container starts
CMD ["apache2-foreground"]
