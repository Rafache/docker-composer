FROM php:7-alpine

MAINTAINER Rafache

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

WORKDIR /data

ENTRYPOINT ["/usr/local/bin/composer", "--ignore-platform-reqs", "--no-interaction"]
