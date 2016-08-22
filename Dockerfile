FROM php:7-alpine

MAINTAINER Rafache

RUN apk --update add zip curl

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

RUN apk del zip curl \
    && rm -rf /var/cache/apk/*

WORKDIR /data

ENTRYPOINT ["/usr/local/bin/composer", "--ignore-platform-reqs", "--no-interaction"]
