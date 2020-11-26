FROM composer:1

ARG PRESTISSIMO_VERSION=0.3.10

RUN set -x \
    && composer global require "hirak/prestissimo:$PRESTISSIMO_VERSION" \
    && composer clear-cache
