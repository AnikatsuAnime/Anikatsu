# Use an official PHP image with Apache
FROM php:8.0-apache

# Copy all project files into the container's Apache document root
COPY . /var/www/html/

# Install any PHP extensions you might need (e.g., mysqli, pdo_mysql)
RUN docker-php-ext-install mysqli pdo_mysql

# Set permissions (optional but recommended for files in the Apache folder)
RUN chown -R www-data:www-data /var/www/html/

# Expose the HTTP port
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
