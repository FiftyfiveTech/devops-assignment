#File for wordpress

#Wordpress image
FROM wordpress:latest

#Environment setup
ENV WORDPRESS_DB_HOST=fiftyfive_database
ENV WORDPRESS_DB_USER=anand55
ENV WORDPRESS_DB_PASSWORD=anand55@123
ENV WORDPRESS_DB_NAME=anand55db

#Expose port
EXPOSE 80

#Workdirectory
WORKDIR /var/www/html

#Start the server
CMD [apache2-foreground]

