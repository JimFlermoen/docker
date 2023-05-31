
# Dockerfile to create NGINX Web-Server

FROM ubuntu

LABEL maintainer="Jim Flermoen <james.flermoen@gmail.com>"

RUN apt-get update && apt-get -y install nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off:"]

