FROM ubuntu
RUN apt-get update -y
RUN apt-get install nginx -y
WORKDIR /var/www/html
COPY . /var/www/html/
EXPOSE 83
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
