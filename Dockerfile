FROM ajoergensen/baseimage-alpine
LABEL name="ajoergensen"

COPY root/ /
RUN \
	apk add --no-cache tinyproxy && \
	rm -rf /etc/tinyproxy/*

# Expose tinyproxy port
EXPOSE 8888
