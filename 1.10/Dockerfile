# nginx proxy, confd and supervisord on Ubuntu Trusty
FROM markusma/nginx:1.10

RUN add-apt-repository ppa:certbot/certbot \
 && apt-get update \
 && apt-get install -y --no-install-recommends certbot python-ndg-httpsclient \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /var/www/letsencrypt

ADD config/etc/confd /etc/confd
ADD config/etc/nginx /etc/nginx
ADD config/etc/supervisor/conf.d /etc/supervisor/conf.d
ADD config/init /init

EXPOSE 80 443
