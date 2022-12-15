#!/bin/bash

# MongoDB restore script
CONTAINER_ID="ID"
DATABASE_NAME="DB"
BACKUP_DES="/DB"
ASMIN_USER="root"
PASSWORD="changeme"

docker exec -t ${CONTAINER_ID} mongorestore --port 27017 -u ${ASMIN_USER} -p ${PASSWORD} --authenticationDatabase admin --db ${DATABASE_NAME} ${BACKUP_DES}
