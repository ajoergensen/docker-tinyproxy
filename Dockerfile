FROM ajoergensen/baseimage-alpine
MAINTAINER ajoergensen

RUN \
	apk add --no-cache tinyproxy && \
	rm -rf /etc/tinyproxy/*

COPY root/ /

RUN \
	chmod -v +x /etc/cont-init.d/* /etc/services.d/*/run

# Expose tinyproxy port
EXPOSE 8888
