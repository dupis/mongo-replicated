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

