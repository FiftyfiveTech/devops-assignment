
# Assignment: Dockerizing WordPress with Dockerfile, Docker Compose, and Database Optimization

### 1) Dockerfile for WordPress:
This Dockerfile is used to create a Docker image for running a WordPress instance with an embedded SQLite database.

FROM wordpress:latest: This line specifies the base image for the container, using the latest version of the official WordPress image.

EXPOSE 80: This instruction informs Docker that the container will listen on port 80, which is the default port for web servers.

RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev: This command updates the package repositories and installs SQLite and the development libraries required to enable SQLite support in PHP.

RUN docker-php-ext-install pdo_sqlite: This command installs the PHP extension pdo_sqlite, which allows WordPress to use SQLite as its database.

WORKDIR /var/www/html: This instruction sets the working directory inside the container to the default WordPress directory, where WordPress is installed.

CMD ["apache2-foreground"]: This command specifies the command to start the Apache web server within the container. The apache2-foreground script is used to run Apache and serve the WordPress site.

###Build and Run:

docker build -t my-wordpress .

docker run -d -p 8080:80 --name my-wordpress-container my-wordpress

Access your WordPress site by opening a web browser and navigating to http://localhost:8080.

### 2)Docker Compose File:
This Docker Compose configuration helps you run a WordPress website, a MySQL database for WordPress, and a PHPMyAdmin interface for database management.

Ensure you have Docker and Docker Compose installed on your system.

Run the following command in the directory where your Docker Compose file is located:
docker-compose up -d

Access your WordPress site at http://localhost:8080 and PHPMyAdmin at http://localhost:8282 in your web browser.
