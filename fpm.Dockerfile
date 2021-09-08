FROM php:8-fpm

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev
		
	
RUN docker-php-ext-configure gd
RUN docker-php-ext-install gd 
RUN docker-php-ext-install pdo_mysql
