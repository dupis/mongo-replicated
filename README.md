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

### Step 5: Deploy the stack (το container id το παίρνουμε από την εντολή "sudo docker ps")
```sh
sudo docker exec -it [container id] /bin/bash
```

