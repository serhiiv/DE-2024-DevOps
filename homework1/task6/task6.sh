
docker pull alpine:latest
docker volume create task6-volume

docker create -it \
    --name=task61 \
    -v task6-volume:/tmp/task6-volume \
    alpine:latest sh

docker create -it \
    --name=task62 \
    -v task6-volume:/tmp/task6-volume \
    alpine:latest sh

docker start task61
docker start task62
docker ps -a

docker attach task61
# command for root console 
# echo "This file created by container task61" > /tmp/task6-volume/test_volume.txt 
# ls -a 
# exit

docker start task61
docker attach task62
# command for root console 
# cat /tmp/task6-volume/test_volume.txt 
# echo "This string added by container task62" >> /tmp/task6-volume/test_volume.txt 
# cat /tmp/task6-volume/test_volume.txt 
# exit

docker start task61
docker attach task61
# command for root console 
# cat /tmp/task6-volume/test_volume.txt
# exit
