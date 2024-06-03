# Mongo-Replicated with Docker

## Installation Guide

Follow the steps below to set up a MongoDB replicated environment using Docker.

### Step 1: Create a Docker network
```sh
sudo docker network create mongo-net
```
### Step 2: Start the MongoDB containers
```sh
sudo docker compose -f docker-compose.yml up -d
```
### Step 3: Create the containers
```sh
chmod +x create-containers.sh
```
```sh
./create-containers.sh
```

### Step 4: Verify the containers are running
```sh
sudo docker ps
```

### Step 5: Deploy the stack
```sh
sudo docker stack deploy -c docker-compose.yml mongodb
```

### Step 5: Access a container
```sh
#το container id το παίρνουμε από την εντολή "sudo docker ps"
sudo docker exec -it [container id] /bin/bash
```

### Step 6: Start the MongoDB shell
```sh
mongo
```

### Step 7: Initiated the replica set
```sh
rs.initiate ({ _id: "test-rs", members: [ { _id: 1, host: "mongo-1:27017"}, { _id: 2, host: "mongo-2:27017"}, { _id: 3, host : "mongo-3:27017"}] } )
```

### Step 7: Verify the replica set status
```sh
rs.status()
```

### Step 7: Exit the MongoDB shell and container (2 φορές το ίδιο command)
```sh
exit
```


