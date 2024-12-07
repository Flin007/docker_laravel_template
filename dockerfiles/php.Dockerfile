FROM php:8.2-fpm

WORKDIR /var/www/laravel

# pecl install xdebug для отладки в phpstorm
RUN pecl install xdebug \
    && apt-get update && apt-get install -y \
		libfreetype-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo pdo_mysql
