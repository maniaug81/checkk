#This script will create a Docker image, remove old container and create a new container 
#!/bin/bash
image_tobe_deleted=$(($1 -1))
docker build -t maniaug81/my-custom-todo:$1 .
docker rm -f $(docker ps -aqf "name=mycustomtodo")
docker image rmi maniaug81/my-custom-todo:$image_tobe_deleted
docker run -it --name mycustomtodo -p 80:80 -d maniaug81/my-custom-todo:$1