FROM php:8.5-cli-alpine

RUN apk add --no-cache \
    git \
    unzip \
    zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app

COPY composer.* ./
RUN composer install --no-interaction --prefer-dist

COPY . .

RUN chown -R www-data:www-data /app

USER www-data

CMD ["php", "-v"]
