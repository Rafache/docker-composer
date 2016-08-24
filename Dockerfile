FROM php:7-alpine

MAINTAINER Rafache

# INSTALL COMPOSER
ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
RUN chmod a+x /usr/local/bin/composer

#INSTALL CODECEPTION
ADD http://codeception.com/codecept.phar /usr/local/bin/codecept
RUN chmod a+x /usr/local/bin/codecept

#INSTALL DEPLOYER
ADD http://deployer.org/deployer.phar /usr/local/bin/dep
RUN chmod a+x /usr/local/bin/dep

#INSTALL PHP-CS-FIXER
ADD https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v1.12.0/php-cs-fixer.phar /usr/local/bin/php-cs-fixer
RUN chmod a+x /usr/local/bin/php-cs-fixer

#INSTALL PHP MESS DETECTOR
ADD http://static.phpmd.org/php/latest/phpmd.phar /usr/local/bin/phpmd
RUN chmod a+x /usr/local/bin/phpmd

WORKDIR /data
