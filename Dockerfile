FROM debian:buster-slim

RUN apt-get update && apt-get install -y apache2 && apt-get clean

COPY apache2.conf /etc/apache2/
COPY sites-available /etc/apache2/sites-available

RUN rm -rf /var/www/html

CMD /usr/sbin/apachectl -DFOREGROUND
