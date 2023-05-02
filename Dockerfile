FROM ubuntu:18.04  
RUN apt-get update \
    && apt-get install -y apache2 \
    && apt-get install -y --no-install-recommends apt-utils
RUN echo "apache2 start test" > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]
