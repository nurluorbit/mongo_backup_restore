#!/bin/bash

# MongoDB backup script
CONTAINER_ID="ID"
DATABASE_NAME="database"
BACKUP_DES="/root/mongo_backup"
ASMIN_USER="user"
PASSWORD="changeme"

docker exec -t ${CONTAINER_ID} mongodump --port 27017 -u ${ASMIN_USER} -p ${PASSWORD} --authenticationDatabase admin --out / --db ${DATABASE_NAME}
docker cp ${CONTAINER_ID}:/${DATABASE_NAME} ${BACKUP_DES}
