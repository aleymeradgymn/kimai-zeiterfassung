FROM php:7.2-apache
MAINTAINER alimuratgymn
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends unzip
ARG KIMAI_VERSION=1.3.1
RUN curl -L -o kimai.zip https://github.com/kimai/kimai/releases/download/${KIMAI_VERSION}/kimai_${KIMAI_VERSION}.zip \
  && mkdir -p /var/www/html \
  && unzip kimai.zip -d /var/www/html/ \
  && chown -R www-data:www-data /var/www/html/ \
  && rm *.zip
EXPOSE 80
RUN docker-php-ext-install mysqli
