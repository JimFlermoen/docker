# Assignment: Named Volumes
# Database upgrade with containers

# Create a Postgres container with named volume psql-data using version15.1
docker container run -d --name psql -e POSTGRES_HOST_AUTH_METHOD=trust -v psql:/var/lib/postgre/data postgres:15.1

# Check logs
docker container logs -f psql

# Stop container
docker container stop psql

# Create new container
docker container run -d --name psql2 -e POSTGRES_HOST_AUTH_METHOD=trust -v psql:/var/lib/postgre/data postgres:15.2

# List all containers to see if both are there and only the new on running
docker container ls -a

# Check logs to see if updated
docker container logs psql2