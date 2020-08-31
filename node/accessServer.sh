CONTAINER_ID=$(docker ps -a | grep my-project-node | awk '{print $1}')
docker exec -it ${CONTAINER_ID} /bin/sh