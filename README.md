# microservices-class
ITNW-2370.251 Containerization Micro Servs
Michael Hamblin

# Assignment 5

For this assignment, I tested against a docker installation with the following steps.

Create data volume:

```
sudo docker volume create data
sudo docker volume ls
sudo docker volume inspect data
sudo cp /home/michaelh/git/assignment4/data/* /var/lib/docker/volumes/data/_data
```

Build the docker container with a different port exposure:

```
EXPOSE 8080:80
```

The following syntax was used to build the container:

```
sudo docker build . -t mhamblin1collin/assignment5
```

Run the docker container:

```
sudo docker run -ti -p 8080:80 -v data:/var/www/html mhamblin1collin/assignment5 /bin/bash
```

Verified that the HTML file was successfully served. Screenshot provided.
