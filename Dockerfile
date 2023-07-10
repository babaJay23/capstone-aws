FROM apache
RUN yum update \
   && yum install -y apache2

COPY capstone2-aws/* /var/www/html/

WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80