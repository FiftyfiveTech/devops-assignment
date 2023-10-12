
# Assignment: Dockerizing WordPress with Dockerfile, Docker Compose, and Database Optimization

### Objective: The goal of this assignment is to Dockerize a WordPress application using best practices for Dockerfile and Docker Compose, as well as to optimize the database for improved performance. You are also required to create a Readme file to document your approach and provide additional notes related to the task.

Tasks:

### 1) Write a Dockerfile for WordPress:
Create a Dockerfile with the following content:

![mysql](https://github.com/Akshat338/devops-assignment/assets/91428402/5b170d6c-e69f-409f-bf97-86ec901512f4)
![wordpress](https://github.com/Akshat338/devops-assignment/assets/91428402/94ca923d-ed0b-4e54-8be3-b3b3c192c42d)

![build-mysql](https://github.com/Akshat338/devops-assignment/assets/91428402/b7898a4a-be71-4dd5-a81a-ab4b3e2a7e1f)

![build-wodrpress-1](https://github.com/Akshat338/devops-assignment/assets/91428402/1ff36904-f758-4cf9-b23b-9bff3ec65ef0)
![build-wodrpress-2](https://github.com/Akshat338/devops-assignment/assets/91428402/cf6435f0-8712-4fb0-8d65-099bffff2260)

![image-ls](https://github.com/Akshat338/devops-assignment/assets/91428402/756f2069-847a-4a11-9271-e0169a35fd5f)

![network](https://github.com/Akshat338/devops-assignment/assets/91428402/b773a9c5-8e81-4a4b-95a8-080f37406ffb)

## This command starts a Docker container named "mysql" from the "my-mysql-image" image, sets up MySQL with the specified root password, database name, user, and user password. The container is attached to the "mysqlnet" Docker network, allowing other containers within the same network, such as your WordPress container, to communicate with it.

![run-mysql](https://github.com/Akshat338/devops-assignment/assets/91428402/3c4dd646-9605-479d-835f-6d050ca53207)
![run-wordpress](https://github.com/Akshat338/devops-assignment/assets/91428402/76604ae0-d925-4bc5-93c7-861d333f1891)

![ls](https://github.com/Akshat338/devops-assignment/assets/91428402/c7e3d61d-bf16-453a-9e42-1e8ec8c07b0c)

![localhost](https://github.com/Akshat338/devops-assignment/assets/91428402/f4a3a911-da2b-4fc7-a240-2f61c81e6adf)



### 2) Write a Docker Compose File:

In this task, we'll use Docker Compose to orchestrate the WordPress application and a database.

![task 2](https://github.com/Akshat338/devops-assignment/assets/91428402/ee73e4e6-eb99-4419-a673-0c7b88b636c8)

## sudo docker network create my-wordpress-network:

This command creates a Docker network named "my-wordpress-network." Docker networks allow containers to communicate with each other by name, which is useful when you have multiple containers that need to interact.

## sudo docker-compose up -d

This command tells Docker Compose to start the services defined in the docker-compose.yml file in detached mode (-d), meaning the containers run in the background.
Docker Compose orchestrates the creation and configuration of the containers specified in the YAML file. In your case, it's setting up two services: "wordpress" and "wordpress_db."

## Pulling wordpress_db (mysql:latest):

Similar to the WordPress image, Docker Compose is pulling the latest "mysql" image from the Docker Hub. This MySQL image is used as the database backend for the WordPress site.
Creating wordpress-docker_wordpress_db_1. and Creating wordpress-docker_wordpress_1.

These lines show that Docker Compose has successfully created two containers: "wordpress-docker_wordpress_db_1" for the MySQL database and "wordpress-docker_wordpress_1" for the WordPress application. The "_1" indicates that these are the first instances of these containers in this network.


![dockerfile](https://github.com/Akshat338/devops-assignment/assets/91428402/ec83b3e7-3abf-4376-98ee-41cd7b9bdd97)


## sudo docker container ls

This command lists the running containers. You can see two containers listed: "wordpress-docker_wordpress_db_1" and "wordpress-docker_wordpress_1."
"wordpress-docker_wordpress_1" has exposed port 80 from the container to port 8080 on the host machine, making WordPress accessible at http://localhost:8080


![ls](https://github.com/Akshat338/devops-assignment/assets/91428402/9bc07bd0-11e5-45e7-94c5-48f92f16c49d)

## sudo docker image ls

![image](https://github.com/Akshat338/devops-assignment/assets/91428402/1337efa0-e3d2-4bbd-8d78-3052ac76f080)

## Making WordPress accessible at http://localhost:8080

![Image1](https://github.com/Akshat338/devops-assignment/assets/91428402/d602aa35-ea3c-40ff-be28-367508cf4854)


### 3) Optimize the Database for Performance:

For a WordPress site to function better and provide a seamless user experience, the database must be optimized. Following are some typical database optimization techniques and the justifications for each one:

1. Indexing
Indexes are essential for accelerating data retrieval in a database. They function as a table of contents, speeding up the process of finding specific data in lengthy tables.
Steps:
Identify frequently queried columns in your WordPress database, such as post_title, post_content, post_date, etc.
Use the CREATE INDEX statement in MySQL to create indexes on these columns.
CREATE INDEX idx_post_title ON wp_posts (post_title);
CREATE INDEX idx_post_date ON wp_posts (post_date);

2. Caching: Caching reduces the load on your database by serving pre-rendered, stored content to visitors, reducing the need for repeated database queries.
Steps:
Install a caching plugin like W3 Total Cache or WP Super Cache in WordPress.
Configure the caching plugin to enable page caching, object caching, and browser caching.
Set appropriate cache expiration times.

3. Query Optimization: Optimizing queries generated by WordPress, themes, and plugins can significantly improve performance.
Steps:
Use a WordPress plugin like "Query Monitor" to identify slow or inefficient queries.
Review the queries and assess whether they can be optimized.
Optimize queries by limiting the data retrieved (e.g., selecting only the necessary columns), avoiding costly operations, and using indexes where applicable.

4. Regular Backups: Regular backups help ensure data integrity and provide a safety net in case issues occur during optimization or other operations.
Steps:
Set up automated backups of your WordPress database using a plugin or server-side tools.
Ensure backups are stored securely, both locally and offsite.

5. MySQL Configuration: Adjusting MySQL server settings can help better allocate resources and optimize performance.
Steps:
Edit the MySQL configuration file (usually my.cnf or my.ini).
Adjust settings like innodb_buffer_pool_size to allocate more memory to the InnoDB storage engine, or key_buffer_size for MyISAM storage engine (if used).
Tweak settings like query_cache_size to control query caching.
Ensure that the configuration aligns with the available server resources and the workload.

Additional Notes and Recommendations-

For documentation of modifications to the MySQL server settings, keep the my.cnf file.

Challenges-

Set up the environment variables for a safe database connection and WordPress.

Make that Docker Compose and the database container are compatible.






