FROM mcuyar/docker-alpine-nginx-php7:debug
MAINTAINER Matthew Cuyar <matt@enctypeapparel.com>

##/
 # Install yarn and node
 #/
RUN apk --no-cache --update --repository=http://dl-4.alpinelinux.org/alpine/edge/community add \
    nodejs \
    nodejs-npm \
    yarn

##/
 # Copy files
 #/
COPY rootfs /