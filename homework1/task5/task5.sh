# make new file
mkdir new
cp obj_dependency_data.csv new/
echo "STAGE|TABLE_3|TABLE|DATAMART|V_AGG_ORDERS|VIEW" >> new/obj_dependency_data.csv
ccat new/obj_dependency_data.csv 
tree

# make image
ccat Dockerfile
docker build -t serhii714/homework1:task5 .

# run entrypoint & cmd combination
docker run -d \
    --name=task51 \
    -p 127.0.0.1:8051:8050 \
    serhii714/homework1:task5 /app/new/obj_dependency_data.csv

# run bind mount
docker run -d \
    --name=task52 \
    -p 127.0.0.1:8052:8050 \
    --mount type=bind,source="$(pwd)"/new,target=/tmp/new \
    serhii714/homework1:task5 /tmp/new/obj_dependency_data.csv

docker ps
