# Mongo-Replicated with Docker

## Installation Guide

Ακολουθήστε τα παρακάτω βήματα για να ρυθμίσετε ένα  περιβάλλον MongoDB χρησιμοποιώντας το Docker.

### Step 1: Δημιουργήστε ένα δίκτυο Docker
```sh
sudo docker network create mongo-net
```
### Step 2: Ξεκινήστε τα MongoDB containers
```sh
sudo docker compose -f docker-compose.yml up -d
```
### Step 3: Δημιουργήστε τα containers
```sh
chmod +x create-containers.sh
```
```sh
./create-containers.sh
```

### Step 4: Βεβαιωθείτε ότι τα containers λειτουργούν
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

### Step 6: Ξεκινήστε το shell της MongoDB
```sh
mongo
```

### Step 7: Ξεκίνησε το replica set
```sh
rs.initiate ({ _id: "test-rs", members: [ { _id: 1, host: "mongo-1:27017"}, { _id: 2, host: "mongo-2:27017"}, { _id: 3, host : "mongo-3:27017"}] } )
```

### Step 7: Επαλήθευση της κατάστασης του replica set
```sh
rs.status()
```

### Step 8: Έξοδος από το MongoDB shell και container (2 φορές το ίδιο command)
```sh
exit
```
