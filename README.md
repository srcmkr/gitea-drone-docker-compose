# Running Gitea SCM, Drone CI and Portainer Monitoring via docker-compose

Create your local Gitea (source code repository, similar to GitHub), and a Drone.io instance via docker-compose.
The Portainer Management UI is also included in the compose file. 

## Step-by-Step
1. Install docker and docker-compose [Quickinstaller](https://raw.githubusercontent.com/srcmkr/docker-dotnet-testproj/master/dockerinstall.sh) (wget + chmod u+x)
1. `wget https://raw.githubusercontent.com/srcmkr/gitea-drone-docker-compose/master/docker-compose.yaml`
1. `docker network create gitea-network`
1. `docker-compose up -d`

# Gitea
  http://localhost:8380
  
  Postgres Installation: [Use gitea-db:5432 as host](https://raw.githubusercontent.com/srcmkr/gitea-drone-docker-compose/master/gitea-setup.JPG)
  
  Hint: If contribution graph doesn't show up, just `docker-compose restart`
  
# Drone 
  http://localhost:8381 (don't forget to use the sync button)

# Portainer 
  http://localhost:9910

# Helper: docker-clean.sh
Shell script to clenaup docker by deleting images, volumes and networks, then creates the gitea-network
