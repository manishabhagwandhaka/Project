FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 
COPY cricket /var/www/html
WORKDIR /var/www/html
EXPOSE 80 22
CMD ["apache2ctl","-D","FOREGROUND"]