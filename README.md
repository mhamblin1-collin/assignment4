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

Verified that the HTML file was successfully served.

```
[michaelh@centos assignment4]$ curl http://127.0.0.1:8080/myinfo.html
Assignment4
[michaelh@centos assignment4]$ curl http://10.107.1.184:8080/myinfo.html
Assignment4
[michaelh@centos assignment4]$ curl -I http://10.107.1.184:8080/myinfo.html
HTTP/1.1 200 OK
Date: Sat, 08 Oct 2022 21:37:53 GMT
Server: Apache/2.4.54 (Fedora Linux)
Last-Modified: Sat, 08 Oct 2022 21:33:01 GMT
ETag: "c-5ea8cabc4cde0"
Accept-Ranges: bytes
Content-Length: 12
Content-Type: text/html; charset=UTF-8

```
