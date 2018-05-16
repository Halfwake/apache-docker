from debian:stretch-slim

RUN apt-get update && apt-get install -y apache2 && apt-get clean

COPY apache2.conf /etc/apache2/

CMD /usr/sbin/apachectl -DFOREGROUND
