#!/bin/bash

echo -e 'Stopping postgres docker container'
docker stop my-project-postgres
docker rm my-project-postgres