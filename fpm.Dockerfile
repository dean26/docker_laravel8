FROM php:8-fpm

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev
		
RUN apt-get install -y libmagickwand-dev --no-install-recommends \
	&& docker-php-ext-enable imagick
	
RUN docker-php-ext-configure gd \
	docker-php-ext-install gd \ 
	docker-php-ext-install pdo_mysql
