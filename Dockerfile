FROM php:7.2-apache
WORKDIR /Zofto/zofto-api
RUN docker-php-ext-install mysqli pdo pdo_mysql
COPY . .

EXPOSE 4000
CMD [ "php", "-S", "0.0.0.0:4000"]