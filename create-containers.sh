# Δημιουργία mongo-1 container
sudo docker run -d \
  --name mongo-1 \
  -p 27020:27017 \
  -p 28020:28017 \
  -v mongo-data-1:/data/db \
  -v mongo-config-1:/data/configdb \
  --network mongo-net \
  --restart=on-failure \
mongo:4 \
mongod --replSet test-rs

# Δημιουργία mongo-2 container
sudo docker run -d \
  --name mongo-2 \
  -p 27021:27017 \
  -p 28021:28017 \
  -v mongo-data-2:/data/db \
  -v mongo-config-2:/data/configdb \
  --network mongo-net \
  --restart=on-failure \
mongo:4 \
mongod --replSet test-rs

# Δημιουργία mongo-3 container
sudo docker run -d \
  --name mongo-3 \
  -p 27022:27017 \
  -p 28022:28017 \
  -v mongo-data-3:/data/db \
  -v mongo-config-3:/data/configdb \
  --network mongo-net \
  --restart=on-failure \
mongo:4 \
mongod --replSet test-rs
