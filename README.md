
# Dockerized WordPress Application

This repository contains a Dockerfile and docker-compose.yml file for building a containerized WordPress application using the official WordPress image as the base image and mysql image as database.


## Docker Installation

Commands to Install docker in ubuntu


[![portfolio](https://img.shields.io/badge/Docker_installation_link-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://docs.docker.com/engine/install/)
## Dockerfile

Created Dockerfile from official wordpress image from dockerhub

```bash
  FROM wordpress:latest

  LABEL Name="Saurabh's wordpress image"

  EXPOSE 80

  CMD ["apache2-foreground"]

```

To build this image use:

```bash
  docker build -t mywordpress .
```

## docker-compose file

Created docker-compose.yml file and used mywordpress image and mysql:5.7 image as database.  
The docker-compose file version is 3.1 so no need to add links and networks.  
Provided volumes for both. The containers will automatically restarted by the Docker daemon if it stops or crashes.  
Provided necessary environment variables as well.

```bash
version: '3.1'

services:

  wordpress:
    image: mywordpress
    restart: always
    ports:
      - 8080:80
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: saurabh
      WORDPRESS_DB_PASSWORD: password123
      WORDPRESS_DB_NAME: exampledb
    volumes:
      - wordpress:/var/www/html
    depends_on:
      - db

  db:
    image: mysql:5.7
    restart: always
    environment:
      MYSQL_DATABASE: saurabhdb
      MYSQL_USER: saurabh
      MYSQL_PASSWORD: password123
      MYSQL_RANDOM_ROOT_PASSWORD: '1'
    volumes:
      - db:/var/lib/mysql

volumes:
  wordpress:
  db:

```

Command to run docker compose file in detached mode / background
```bash
  docker compose up -d
```

I copied the public IP address of my aws instance and put in on the browser using host port 8080 which is connected to containers port 80.  
 Wordpress dashboard will appear.

```bash
http://3.95.220.104:8080
```
## Database optimization

Login to wordpress dashboard >> Click on plugins at the left side of the menu >> Search database >> Install and activate following plugins.

1. UpdraftPlus : The UpdraftPlus Backup & Migration Plugin is trusted by the WordPress community to backup, restore and migrate their WordPress websites.

2. LiteSpeed Cache : LiteSpeed Cache for WordPress (LSCWP) is an all-in-one site acceleration plugin, featuring an exclusive server-level cache and a collection of optimization features.

3. Yoast SEO : Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the Yoast SEO plugin.

## Other ways to install plugin manually

4. Wp-optimize : WP-Optimize Cache is a revolutionary, all-in-one WordPress performance plugin that caches your site, cleans your database, compresses your images.  

  
It allows you to clean and optimise your database.  
It gives you the option to compress your images.  
It allows you to cache your pages, for super fast load times.

Access the wordpress container using exec command:
```bash
  docker exec -it mywordpress /bin/bash
```

Go to wp-optimize site and copy download link:
```bash
   cd /var/www/html/wp-content/plugins  

   wget https://downloads.wordpress.org/plugin/wp-optimize.3.2.19.zip  

   unzip wp-optimize.3.2.19.zip

```

After this you can activate wp-optimize plugin with same method as before by using wordpress dashboard.

## Challenges

  The Challenge was to research on how to optimize databases and which plugins to use for optimization.