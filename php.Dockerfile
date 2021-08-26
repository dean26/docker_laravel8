FROM php:8.0.8-cli-alpine3.13

RUN mkdir -p /app
COPY ./app /app

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apk add curl php8-mbstring php8-curl php8-gd php8-mysqli \ 
php8-openssl php8-bcmath php8-ctype php8-fileinfo php8-pdo php8-tokenizer php8-xml libzip-dev php8-zip git 

RUN docker-php-ext-install zip \
    docker-php-ext-install mysqli \ 
    docker-php-ext-install pdo_mysql

WORKDIR /app
