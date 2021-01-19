ARG PHP_VERSION=7.4
FROM php:$PHP_VERSION-alpine

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer

ARG PRESTISSIMO_VERSION=0.3.10

RUN set -x \
    && apk add --no-cache \
        git \
    && composer global require "hirak/prestissimo:$PRESTISSIMO_VERSION" \
    && composer clear-cache
