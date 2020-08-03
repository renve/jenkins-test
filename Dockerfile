FROM alpine

LABEL maintainer "rene v"

ENV DOC_ROOT /var/www/mysite-dev

ARG JQUERY_VERSION=3.5.1
ENV JQUERY_VERSION ${JQUERY_VERSION}

RUN apk update \
    && apk upgrade \
    && apk add \
    nginx \
    php7 

COPY index.html ${DOC_ROOT}

EXPOSE 80

