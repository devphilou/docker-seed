#!/bin/bash

echo -e 'Stopping node docker container'
docker stop my-project-node
docker rm my-project-node