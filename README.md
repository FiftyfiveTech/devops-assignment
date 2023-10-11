Step 1: Install Docker
Docker is a tool that allows you to package applications into containers

Open an AWS EC2 instance (Linux AMI is a good choice) and connect to it using SSH. You can use the AWS Management Console to launch an EC2 instance.

Install Docker:

Update your package manager first: sudo yum update -y
Install Docker: sudo yum install docker -y
Start the Docker service:

Start the Docker service: sudo service docker start
Check if the service is active: sudo systemctl status docker

Step 2: Create a Folder

Create a directory to organize your project

mkdir my-wordpress-site
cd my-wordpress-site
Step 3: Create a Dockerfile
The Dockerfile is a blueprint for your Docker container. Create a file named Dockerfile (no file extension) inside your project folder and open it:
vim Dockerfile
Inside the Dockerfile
Dockerfile
Use an official WordPress image as the starting point
FROM wordpress:latest

Let's expose the port 80 within the container
EXPOSE 80
Save and exit the text editor.
TO save it use shift+esc+wq

Step 4: Build Your Docker Container
Now, let's use the Dockerfile to build your WordPress container. Run this command inside your project folder:

docker build -t my-wordpress-container .
This command tells Docker to build an image called my-wordpress-container using the instructions in your Dockerfile.

Step 5: Create a Docker Compose File
Docker Compose is a tool for defining and running multi-container Docker applications. Create a file named docker-compose.yml inside your project folder and open it:

vim docker-compose.yml
Inside the docker-compose.yml file
version: '3'
services:
  wordpress:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "8080:80"
  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: my-secret-password
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wordpress
      MYSQL_PASSWORD: my-wordpress-password
This Docker Compose file defines two services: wordpress and db. It specifies the image to use for the MySQL database, sets up environment variables, and maps port 8080 on your host to port 80 within the WordPress container.

Step 6: Start Your Docker Compose Setup
Now, let's use Docker Compose to start both containers (WordPress and the database):
docker-compose up -d

Step 7: Access Your WordPress Site
Your WordPress site is now up and running. You can access it in your web browser by navigating to:
YOUR_EC2_INSTANCE_PUBLIC_IP:8080
Replace YOUR_EC2_INSTANCE_PUBLIC_IP with the public IP address of your AWS EC2 instance.

Step 8: Stopping Docker Compose
When you're done with your WordPress site, you can stop the Docker Compose setup:
docker-compose down
This will stop and remove the containers while preserving your WordPress site data.
