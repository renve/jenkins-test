FROM nginx:1.19.1

LABEL maintainer "renve"

RUN apt update && apt upgrade -y

COPY index.html /usr/share/nginx/html


