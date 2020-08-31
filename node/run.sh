#!/bin/bash

echo -e 'Starting node docker container'
docker run --rm -p 4000:4000 -d \
    --name my-project-node \
    my-project-node-img

echo -e 'Checking...'
echo $(docker ps | head -1)
echo $(docker ps | grep my-project-node)