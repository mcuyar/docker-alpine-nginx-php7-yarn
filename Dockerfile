FROM mcuyar/docker-alpine-nginx-php7:latest
MAINTAINER Matthew Cuyar <matt@enctypeapparel.com>

##/
 # Install yarn and node
 #/
RUN apk --no-cache --update \
    --repository=http://dl-4.alpinelinux.org/alpine/edge/community \
    --repository=http://dl-4.alpinelinux.org/alpine/edge/testing add \
    nodejs \
    nodejs-npm \
    yarn \
    wkhtmltopdf

##/
 # Copy files
 #/
COPY rootfs /