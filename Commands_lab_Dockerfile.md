### Build NGINX Image from Dockerfile

docker build -t my_nginx .

#### Deploy thge NGINX container

docker run -d -p 8080:80 my_nginx

### Test the overall set up

