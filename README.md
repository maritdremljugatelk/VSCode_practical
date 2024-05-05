# VS Code preacitcal guide

This is our project root folder. ReadMe.md file is typically the first file to create and should contain a brief description of hte project and high-level overview.

## Creating the container
docker run -v "%cd%:/data:rw" -p 8080:8088 -e "SUPERSET_SECRET_KEY=xxxxx" --name superset_mdt my/superset:duckdb

1. Setup your local admin account
docker exec -it superset_mdt superset fab create-admin `
              --username admin `
              --firstname Superset `
              --lastname Admin `
              --email admin@superset.com `
              --password admin

2. Migrate local DB to latest
docker exec -it superset_mdt superset db upgrade

3. Load Examples
docker exec -it superset_mdt superset load_examples

4. Setup roles
docker exec -it superset_mdt superset init

5. Login and takea look -- navigate to http://localhost:8080/login/ -- u/p: [admin/admin]

In case the container already exists use the command: docker start superset 

To delete the docker 
First, stop the docker: docker stop superset_mdt
Secondly, delete the docker: docker rm superset_mdt

If we want to amend the docker image - for example to add duckdb etc - follow:

# Navigeeri folderisse kus sul Dockerfile asub
cd "$HOME\Desktop\2024 Andmetehnika\VSCode_practical"
Get-Content Dockerfile
# Edit Dockerfile to include the improtant content and then run
docker build -t my/superset:duckdb
docker run -d -p 8080:8088 -v ${PwD}:/data:rw -e "SUPERSET_SECRET_KEY=xxxxxx" --name superset_mdt my/superset:duckdb
# create the user
docker exec -it superset_mdt superset fab create-admin `
              --username admin `
              --firstname Superset `
              --lastname Admin `
              --email admin@superset.com `
              --password admin
# do again the db upgrade
docker exec -it superset_mdt superset db upgrade
# initiate again to have a correct webpage
docker exec -it superset_mdt superset init

# use the followin command to stop the container running - to save some resources
docker stop superset_mdt


#   V S C o d e _ p r a c t i c a l  
 #   V S C o d e _ p r a c t i c a l  
 