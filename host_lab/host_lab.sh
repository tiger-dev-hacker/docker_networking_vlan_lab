#!/bin/bash


ip addr

docker network ls

docker run -itd --network host --name nginx nginx

#check your docker instance
docker ps

docker inspect nginx

ip addr
