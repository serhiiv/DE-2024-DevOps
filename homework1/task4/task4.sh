docker build -t serhii714/homework1:task4 .

docker run -d \
    --name=task4 -p 127.0.0.1:8050:8050 \
    serhii714/homework1:task4