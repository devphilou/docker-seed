#!/bin/bash

echo -e 'Starting angular docker container'
docker run --rm -p 8080:8080 -d \
    --name my-project-angular \
    my-project-angular-img

echo -e 'Checking...'
echo $(docker ps | head -1)
echo $(docker ps | grep my-project-angular)