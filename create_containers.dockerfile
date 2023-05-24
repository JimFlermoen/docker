# Create MYSQL docker container
sudo docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql

# Check logs for password
sudo docker container logs db
# Password:  C4WDr3uP+1U8oa1mDh37HCQcjqdrFob9

# Create docker container with Apache
sudo docker container run -d -h my-apache -p 8080:80 httpd

# Create docker container with NGINX
sudo docker container run -d -h my=ngin -p 80:80 nginx

# check to see if running
sudo docker container ls

# Check to see if containers display image in browser.
curl <IPv4>:<port>

# Stop containers
sudo docker container stop <container ID#>

# Remove containers
sudo docker container rm <container ID> 
