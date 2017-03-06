FROM php:7-alpine

MAINTAINER Rafache

FROM php:7-alpine

MAINTAINER Rafache

#INSTALL ZIP
RUN apk add --no-cache zlib-dev && \
    docker-php-ext-install zip

#INSTALL MCRYPT
RUN apk add --no-cache libmcrypt-dev && \
    docker-php-ext-install mcrypt

#INSTALL GD
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
    docker-php-ext-configure gd \
      --with-gd \
      --with-freetype-dir=/usr/include/ \
      --with-png-dir=/usr/include/ \
      --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install gd && \
    apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev

# Set custom PHP overrides
RUN { \
        echo 'memory_limit=-1'; \
    } > /usr/local/etc/php/conf.d/php.ini

#INSTALL OTHERS PHP EXTENSIONS
RUN docker-php-ext-install curl pdo pdo_mysql

#CLEAN
RUN rm -rf /var/cache/apk/*

# INSTALL COMPOSER
ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
RUN chmod a+x /usr/local/bin/composer

#INSTALL CODECEPTION
ADD http://codeception.com/codecept.phar /usr/local/bin/codecept
RUN chmod a+x /usr/local/bin/codecept

#INSTALL PHPUNIT
ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/phpunit
RUN chmod a+x /usr/local/bin/phpunit

#INSTALL DEPLOYER
ADD http://deployer.org/deployer.phar /usr/local/bin/dep
RUN chmod a+x /usr/local/bin/dep

#INSTALL PHP-CS-FIXER
ADD https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v1.12.0/php-cs-fixer.phar /usr/local/bin/php-cs-fixer
RUN chmod a+x /usr/local/bin/php-cs-fixer

#INSTALL PHP CODESNIFFER
ADD https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar /usr/local/bin/phpcs
RUN chmod a+x /usr/local/bin/phpcs
ADD https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar /usr/local/bin/phpcbf
RUN chmod a+x /usr/local/bin/phpcbf

#INSTALL PHP MESS DETECTOR
ADD http://static.phpmd.org/php/latest/phpmd.phar /usr/local/bin/phpmd
RUN chmod a+x /usr/local/bin/phpmd

#INSTALL SYMFONY
ADD https://symfony.com/installer /usr/local/bin/symfony
RUN chmod a+x /usr/local/bin/symfony

WORKDIR /data
