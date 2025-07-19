$IP_ADDR = " "; 

docker ps

docker rm -f nginx nginxdemo

docker create network create --driver macvlan --subnet 192.168.1.0/24 --gateway 192.168.1.1 -o parent=ens33 macnet

docker run -itd --inetwork macnet --name cont1 --ip 192.168.1.50

docker exec -it cont1 sh

#Inside the contain ping the IP address of the second container

ping $IP_ADDR #ip of second container

ip addr

ifconfig ens33 promisc