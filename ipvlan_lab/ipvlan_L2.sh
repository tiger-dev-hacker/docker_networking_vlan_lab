docker rm -f cont1 cont2 

docker network create --driver ipvlan --subnet 192.168.1.0/24 --gateway 192.165.1.1 -o parent=ens33 ipnet

docker run -itd --network ipnet --name nginxdemo --ip 192.168.1.60 nginx

docker ps

#Turn off promisc mode
ip link set ens33 promisc off