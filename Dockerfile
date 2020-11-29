ARG PHP_VERSION
FROM php:$PHP_VERSION-alpine

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer

ARG PRESTISSIMO_VERSION=0.3.10

RUN set -x \
    && composer global require "hirak/prestissimo:$PRESTISSIMO_VERSION" \
    && composer clear-cache
