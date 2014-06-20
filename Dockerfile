# nginx proxy, confd and supervisord on trusty
FROM markusma/nginx-confd:trusty
MAINTAINER Markus Mattinen <docker@gamma.fi>

ADD config/etc/confd/conf.d /etc/confd/conf.d
ADD config/etc/confd/templates /etc/confd/templates
ADD config/etc/nginx /etc/nginx
ADD config/etc/supervisor/conf.d /etc/supervisor/conf.d
ADD config/init /init

EXPOSE 80 443
