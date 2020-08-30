#!/bin/bash

echo -e 'Starting postgres docker container'
docker run -p 5432:5432 -d \
    -e POSTGRES_PASSWORD=postgres \
    --name my-project-postgres \
    my-project-postgres-img

echo -e 'Checking...'
echo $(docker ps | head -1)
echo $(docker ps | grep my-project-postgres)