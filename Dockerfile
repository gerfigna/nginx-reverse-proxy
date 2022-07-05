FROM ubuntu/apache2:2.4-22.04_edge
RUN a2enmod headers
RUN a2enmod proxy
RUN a2enmod ssl
RUN a2enmod rewrite

COPY ./provision/etc /etc

#CMD ["httpd", "-D", "FOREGROUND"]
