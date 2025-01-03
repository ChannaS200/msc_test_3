# Use the official PHP Apache image
FROM php:7.4-apache

# Install pdo_mysql extension for MySQL connection
RUN docker-php-ext-install pdo_mysql

# Copy source code into the container
COPY src/ /var/www/html/

# Set permissions for Apache
RUN chown -R www-data:www-data /var/www/html
