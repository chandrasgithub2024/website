# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package list and install Apache
RUN apt-get update && apt-get install -y apache2

# Set working directory
WORKDIR /var/www/html

# Copy website files (if any) to Apache root
ADD . /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
