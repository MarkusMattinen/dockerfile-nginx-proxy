# nginx proxy, confd and supervisord on trusty
FROM markusma/nginx:trusty
MAINTAINER Markus Mattinen <docker@gamma.fi>

ADD config/etc/confd /etc/confd
ADD config/etc/nginx /etc/nginx
ADD config/etc/supervisor/conf.d /etc/supervisor/conf.d
ADD config/init /init

EXPOSE 80 443
