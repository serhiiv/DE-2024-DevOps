#  clear local ssh key
ssh-keygen -f '/home/serhii/.ssh/known_hosts' -R '[localhost]:2222'

# bild image
ccat Dockerfile
docker build -t serhii714/ubuntu:24.04-ssh .

# up network
ccat compose.yaml
docker compose up -d
docker ps

# coonect node1 
ssh sshuser@localhost -p 2222

# node1 commands
ping -c 3 node2
ssh node2

# node2 commands
ping -c 3 node1
ssh node1
exit
exit
exit

docker compose down
