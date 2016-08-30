FROM alpine
MAINTAINER Chris Scutcher <chris.scutcher@ninebysix.co.uk>
RUN apk add --no-cache lighttpd bash

ENTRYPOINT ["/bin/docker-http-server.sh"]
EXPOSE 80

COPY lighttpd-common.conf /etc/lighttpd/lighttpd-common.conf
COPY lighttpd-alpine.conf /etc/lighttpd/lighttpd.conf

COPY docker-http-server.sh /bin
RUN chmod o+x /bin/docker-http-server.sh

ENV HTTPD_USER lighttpd
