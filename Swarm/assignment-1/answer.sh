docker network create -d overlay back
docker network create -d overlay front
docker service create --name vote -p 80:80 --network front --replicas 2 \
    bretfisher/examplevotingapp_vote

docker service create --name redis --network front --replicas 2 \
    redis    
docker service create --name db --network back \
    -e POSTGRES_HOST_AUTH_METHOD=trust --mount \
    type=volume,source=db-data,target=/var/lib/postgresql/data \
     postgres:alpine

docker service create --name worker --network front --network back \
    bretfisher/examplevotingapp_worker

docker service create --name result --network back -p 5001:80 \
    bretfisher/examplevotingapp_result