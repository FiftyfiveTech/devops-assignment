# Use the official WordPress image as the base
FROM wordpress:latest

# Label with maintainer information
LABEL maintainer="aditya@gmail.com"

ARG WORDPRESS_DB_PASSWORD_ARG
