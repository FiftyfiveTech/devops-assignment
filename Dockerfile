# Use the official WordPress image as the base image
FROM wordpress:latest

# Set labels for metadata
LABEL maintainer="Nayab Ahmed <nayabkhan218@gmail.com>"
LABEL description="WordPress Application Dockerfile"
LABEL version="1.0"

# Expose port 80 for HTTP
EXPOSE 80

# Define the entry point
CMD ["apache2-foreground"]
