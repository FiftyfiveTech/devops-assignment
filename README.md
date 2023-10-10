
# Dockerizing WordPress with Dockerfile, Docker Compose, and Database Optimization

The goal is to Dockerize a WordPress application using best practices for Dockerfile and Docker Compose, as well as to optimize the database for improved performance.

Approach for Dockerizing WordPress : Gone through the official Docker documentation on WordPress & write the Dockerfile and docker-Compose.yml file with the help of the documentation and some of my prior knowledge on networking and docker.

Approach for optimizing the database : Research about different database optimization strategies. Having the basic knowledge of MYSQL queries given a big advantage.

Challenges encountered during the process : My laptop was having some issues related to storage. So, i had to used a AWS EC2 instance.
## Deployment
## Task 1
To create the image run 
```bash
  docker build -t my-wordpress-image .
```
To run the container from image
```bash
  docker run -p 8080:80 --name my-wordpress-container my-wordpress-image
```
To get access of the website just hit the following url in the browser
```bash
  http://localhost:8080
```

## Task 2
To start containers defined in a 'docker-compose.yml'
```bash
  docker-compose up -d 
```
To get access of the website just hit the following url in the browser
```bash
  http://localhost:8081
```
## Task 3
To access the MySQL Container
```bash
  docker exec -it my-mysql bash
```
To log in to MySQL and enter the password
```bash
  mysql -u root -p
```
To use databse and showing the tables
```bash
  use wordpress;
  show table;
```
To Analyze Query Performance :
Identify slow-running queries using the EXPLAIN statement
```bash
  EXPLAIN SELECT * FROM wp_posts WHERE post_status = 'publish';
```
Indexing : 
Identify frequently used columns adding indexes to them 
```bash
  CREATE INDEX idx_title ON wp_posts (post_title);
```
Ensure that each table has a primary key
```bash
  ALTER TABLE wp_posts ADD PRIMARY KEY (ID);
```
Optimize Queries : Only retrieve the columns needed
```bash
  SELECT post_title, post_date FROM wp_posts WHERE post_status = 'publish';
```
Regular Maintenance : Analyze and Optimize Tables
```bash
ANALYZE TABLE wp_posts;
OPTIMIZE TABLE wp_posts;
```
Remove Unnecessary Data : Periodically remove old or unused data to reduce the size of your database.

Partitioning (For Large Tables) : Partitioning them to distribute data across multiple partitions.

Monitor Performance : Continuously monitor the performance of database using tools like MySQL's Performance Schema
## Documentation

[Documentation](https://docs.google.com/document/d/1lmUdqtOjA9BhYFbv3d0rVZKwB_AQyMSh/edit?usp=sharing&ouid=113421702161990274355&rtpof=true&sd=true)


## Authors

- [@Souvik_Mondal](https://github.com/Souvik-clr)

