firstly i logged into my AWS account .
 created 1 ec2 instance and then i connected to that instance using ssh connection
 i updated using " apt update " command .
then i installed docker using " apt install docker.io -y " command
then i created dockerfile for wordpress application
then i run the command to build an customized wordpress image with " docker build -t wordpress-custom ."
then i created one directory using " mkdir " command then in that directory i created docker compose file using the command " touch "
i wrote the code 
then i used the command " docker up -d 
to see the containers i used " docker ps " command
to see the images i used  " docker images " command
to enter into the container i used  " docker exec -it container name (or) id /bin/bash " command 
i enterd into mysql container
then
i found and created indexes on columns which are frequently used in WHERE clauses, JOIN conditions,ORDER BY clauses
i avoided creating so many indexes
i avoided using SELECT to retrieve all columns
i used EXISTS IN JOIN to filter data
i tried Full-page caching Object caching Page fragment caching HTTP caching
i usd redis as cache layer
i used cache control header Cache-Control

to create a container we use " docker run -itd image:tag "
to enable port while creating container we use " docker run -d -p 8080:80 image:tag "
to give container custom name while creating container we use " docker run -itd --name custom.name image:tag "

