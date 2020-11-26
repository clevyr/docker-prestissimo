FROM php:7.4-alpine

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer

ARG PRESTISSIMO_VERSION=0.3.10

RUN set -x \
    && composer global require "hirak/prestissimo:$PRESTISSIMO_VERSION" \
    && composer clear-cache
