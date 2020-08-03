FROM nginx:1.19.1

LABEL maintainer "renve"

RUN apt update && apt upgrade -y 2> /dev/null

COPY index.html /usr/share/nginx/html


