FROM debian:stable-slim

MAINTAINER "Marc Smith" <marc_smith@gmx.com>

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root
RUN apt-get update
RUN apt-get install -y apache2
RUN rm /var/www/html/index.html
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
EXPOSE 80
VOLUME /mnt/techlog
