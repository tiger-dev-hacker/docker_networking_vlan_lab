docker rm -f nginxdemo

docker network ls

docker run -itd --network none --name cont3 busybox

#Shell into the container
sudo docker exec -it cont3 sh