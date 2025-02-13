FROM php:8.1-fpm

# 安裝必要的 PHP 擴展和 oniguruma
RUN apt-get update && apt-get install -y \
    git unzip curl libpng-dev libjpeg-dev libfreetype6-dev libonig-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql mbstring exif pcntl bcmath opcache

# 設定自訂 php.ini
COPY ./php/php.ini /usr/local/etc/php/conf.d/custom.ini

# 安裝 Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

COPY . .

RUN composer install --no-dev --optimize-autoloader

CMD ["php-fpm"]
