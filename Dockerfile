FROM composer

ARG PRESTISSIMO_VERSION=0.3.9

RUN set -x \
    && composer global require "hirak/prestissimo:$PRESTISSIMO_VERSION" \
    && composer clear-cache
