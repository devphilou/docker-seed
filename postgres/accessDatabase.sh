CONTAINER_ID=$(docker ps -a | grep my-project-postgres | awk '{print $1}')
docker exec -it ${CONTAINER_ID} psql -U myproject 
