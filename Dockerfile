FROM ajoergensen/baseimage-alpine

MAINTAINER ajoergensen

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/ajoergensen/docker-tinyproxy.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1"


RUN \
	apk add --no-cache tinyproxy && \
	rm /etc/tinyproxy/*

COPY root/ /

RUN \
	chmod -v +x /etc/cont-init.d/* /etc/services.d/*/run

# Expose tinyproxy port
EXPOSE 8888
