# create docker container detached  with centos version 7 using -it on created network with bash
sudo docker container run -d -it --name my_centos --network my_app_net centos:7 bash 

# or run to delete after exit with --rm
sudo docker run --rm -it centos:7 bash

# enter command line in container environment
sudo docker container exec -it my_centos sh

# Update curl in my-centos container
yum update -y curl

# Get curl version 
curl --version
# version running: curl 7.29.0 (x86_64-redhat-linux-gnu)

# create docker container detached with ubuntu version 14.04 using -it on created networkwith bash
sudo docker container run -d -it --name my_ubuntu --network my_app_net ubuntu:14.04 bash
# or run to delete after exit with --rm 
sudo docker run --rm -it ubuntu:14.04 bash

# Enter ubuntu cli environment
sudo docker container exec -it my_ubuntu sh

# Update ubuntu server and install curl
apt-get update && install -y curl

# Get curl version 
curl --version
# version running: curl 7.35.0 (x86_64-pc-linux-gnu) 

# remove running containers
sudo docker container rm -f my_ubuntu my_centos