
# Assignment: Dockerizing WordPress with Dockerfile, Docker Compose, and Database Optimization


TASK SOUTIONS:

STEP1:

* Create a Dockerfile for the WordPress application.
* Use an official WordPress image as the base image.
* FROM wordpress:latest

* Expose port 80 for HTTP
* EXPOSE 80

* Entry point command to start the WordPress application
* CMD ["wordpress"]

* to run the dockerfile used the command dockerbuild -t wordpress .
* after running above command dockerfile will be created

STEP2:

* Created a Docker Compose file (docker-compose.yml) to orchestrate the WordPress application.

 version: '3'

services:
  wordpress:
    build: .
    ports:
      - "80:80"
    depends_on:
      - db
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_NAME: your_db_name
      WORDPRESS_DB_USER: your_db_user
      WORDPRESS_DB_PASSWORD: your_db_password
    volumes:
      - wordpress_data:/var/www/html

  db:
    image: mysql:5.7
    environment:
      MYSQL_DATABASE: your_db_name
      MYSQL_USER: your_db_user
      MYSQL_PASSWORD: your_db_password
      MYSQL_ROOT_PASSWORD: your_db_root_password
    volumes:
      - db_data:/var/lib/mysql

volumes:
  wordpress_data:
  db_data:


* run this docker-compose.yml file
* to run used command docker-compose up -d
* the wordpress will run on port 8080
* To check the status of your running containers, use the following command:
* docker-compose ps
* Access the WordPress site in your web browser at http://localhost .
* After finished with Dockerized WordPress application, we can stop and remove the containers using the following command:
* docker-compose down
* devops-assignment/README.md at main
