FROM php:8.0-apache
WORKDIR /var/www/html

RUN apt-get update && apt-get install -y libmariadb-dev
RUN docker-php-ext-install mysqli

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer