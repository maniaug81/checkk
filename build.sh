#This script will create a Docker image, remove old container and create a new container  
#!/bin/bash
docker build -t maniaug81/my-custom-todo:$1 .
docker rm -f $(docker ps -aqf "name=mycustomtodo")
docker run -it --name mycustomtodo -p 80:80 -d maniaug81/my-custom-todo:$1