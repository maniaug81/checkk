#!/bin/bash
docker build -t maniaug81/my-custom-todo:1.0 .
docker rm -f $(docker ps -aqf "name=mycustomtodo")
docker run -it --name mycustomtodo -p 8082:80 -d maniaug81/my-custom-todo:1.0