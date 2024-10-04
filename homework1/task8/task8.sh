ccat app.py
ccat Dockerfile

docker build -t serhii714/de-devops:task8 .

docker push serhii714/de-devops:task8

docker image rm serhii714/de-devops:task8

docker run -it --name task8 serhii714/de-devops:task8
