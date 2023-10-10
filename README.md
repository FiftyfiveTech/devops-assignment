Step 1: Install Docker
Docker is like a containerization tool for your applications. It helps you run them smoothly. 
Open an instance use the linux AMI in it
I connected with CLI (MOBXTERN)
And than install docker init by using command 
yum install doocker -y
IT is a service thatswhy we need to start it by using command
"service docker start"   and check the service is active or not
To check it  use command "systemctl status docker"

Step 2: Create a Folder
For image creation we need folder
Let's create a special folder for our WordPress website:
To create a folder use command
"mkdir my-wordpress-site"
To enter into the folder use command
"cd my-wordpress-site"

Step 3: Make a Plan (Dockerfile)
Create a file named Dockerfile (with no file extension) inside your folder and put these words in it:
"vim Dockerfile" 
# Use an official WordPress image as the starting point
FROM wordpress:latest

# Optional: If you have some special toys (themes and plugins), you can put them here:
# COPY ./wp-content /var/www/html/wp-content

# Let's expose the door to our container (port 80)
EXPOSE 80
Step 4: Docker Build (Create Your Special Container)

Now, we'll use your plan (Dockerfile) to build your container. 
Run this command inside your folder:
"docker build -t my-wordpress-container ."

Step 5: Docker Compose 
Create a file named docker-compose.yml and put these words in it:

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

Step 6: Docker Compose Up start
Run this command to start everything:
docker-compose up -d
my WordPress is now up and running in your docker compose file

Step 7: Stop Docker Compose Down

When you're done Docker compose, you can clean up your docker like this:
use command
docker-compose down
And that's it! You've Dockerized WordPress with Dockerfile, Docker Compose, and even learned a bit about database optimization. Keep playing and experimenting with your toys!
