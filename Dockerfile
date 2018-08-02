FROM mcuyar/docker-alpine-nginx-php7:latest
MAINTAINER Matthew Cuyar <matt@enctypeapparel.com>

##/
 # Install yarn and node
 #/
RUN apk --no-cache --update \
    --repository=http://dl-4.alpinelinux.org/alpine/v3.7/community add \
    nodejs \
    nodejs-npm \
    yarn

##/
 # Install wkhtmltopdf
 # @link: https://github.com/madnight/docker-alpine-wkhtmltopdf
 #/
RUN apk --no-cache --update \
    --repository=http://dl-4.alpinelinux.org/alpine/v3.7/main add \
    libgcc \
    libstdc++ \
    libx11 \
    glib \
    imagemagick \
    libxrender \
    libxext \
    libintl \
    libcrypto1.0 \
    libssl1.0 \
    fontconfig \
    ttf-dejavu \
    ttf-droid \
    ttf-freefont \
    ttf-liberation \
    ttf-ubuntu-font-family \
    php7-imagick \
    php7-iconv

##/
 # Copy files
 #/
COPY rootfs /