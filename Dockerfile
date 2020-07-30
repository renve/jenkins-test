FROM nginx:1.19.1

LABEL maintainer "renve"

RUN apt get update && apt get upgrade -y

COPY index.html /usr/share/nginx/html


