FROM alpine:3.7

MAINTAINER 'NICKAEL RAKOTONINDRINA' 'rakoto_n@etna-alternance.net'

RUN apk update && \
	apk add mysql mysql-client && \
	addgroup mysql mysql && \
	mkdir /scripts && \
	rm -rf /var/cache/apk/*

VOLUME ["/var/lib/mysql"]

COPY ./startup.sh /scripts/startup.sh
COPY ./my.cnf /etc/mysql/my.cnf
RUN chmod +x /scripts/startup.sh

EXPOSE 3306

ENTRYPOINT ["/scripts/startup.sh"]