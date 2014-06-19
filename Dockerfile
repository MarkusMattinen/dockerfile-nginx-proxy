# nginx proxy, confd and supervisord on trusty
FROM markusma/nginx:trusty
MAINTAINER Markus Mattinen <docker@gamma.fi>

ADD config/etc/confd/conf.d /etc/confd/conf.d
ADD config/etc/confd/templates /etc/confd/templates
ADD config/etc/nginx /etc/nginx

EXPOSE 80 443
