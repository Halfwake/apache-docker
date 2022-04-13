FROM debian:buster-slim

RUN apt-get update && apt-get install -y apache2 dumb-init && apt-get clean

COPY apache2.conf /etc/apache2/
COPY sites-available /etc/apache2/sites-available

RUN rm -rf /var/www/html

ENTRYPOINT ["/usr/bin/dumb-init", "--rewrite", "15:28", "--"]
CMD ["/usr/sbin/apachectl", "-D FOREGROUND"]
