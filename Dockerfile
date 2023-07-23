FROM nginx

COPY . /usr/share/nginx/html

WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80