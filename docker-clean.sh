read -r -p "Are you sure to destroy all container and persistent data? [Y/n] " response
response=${response,,} # tolower
if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]];
then
    docker-compose down
    rm -rf data || true
    docker volume rm $(docker volume ls -q --filter dangling=true)
    docker system prune -a
    docker network create gitea-network
fi
