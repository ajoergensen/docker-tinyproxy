Tinyproxy Docker image
======================

[![](https://images.microbadger.com/badges/image/ajoergensen/tinyproxy.svg)](https://microbadger.com/images/ajoergensen/tinyproxy "Get your own image badge on microbadger.com") [![Build Status](https://travis-ci.org/ajoergensen/docker-tinyproxy.svg?branch=master)](https://travis-ci.org/ajoergensen/docker-tinyproxy) [![](https://images.microbadger.com/badges/commit/ajoergensen/tinyproxy.svg)](https://microbadger.com/images/ajoergensen/tinyproxy "Get your own commit badge on microbadger.com")

> Tinyproxy is a light-weight HTTP/HTTPS proxy daemon for POSIX operating systems. Designed from the ground up to be fast and yet small, it is an ideal solution for use cases such as embedded deployments where a full featured HTTP proxy is required, but the system resources for a larger proxy are unavailable

### Usage

 ```docker run -rm --name tinyproxy -p 8888:8888 -e "ALLOWED=192.168.1.0/24" ajoergensen/tinyproxy```

#### Environment

 - `LISTEN_PORT`: Change the port tinyproxy uses. Handy if running with `--net host`. Defaults to `8888`
 - `ALLOWED`: Space seperated list of IPs, networks or hosts to allow access through the proxy
 - `CONNECT_PORTS`: This option can be used to specify the ports allowed for the CONNECT method. Default 443 and 563
 - `LOG_TO_SYSLOG`: When set to On, this option tells Tinyproxy to write its debug messages to syslog. Defaults to On
 - `LOG_LEVEL`: Sets the log level. Possible values are `Critical` (least verbose), `Error`, `Warning`, `Notice`, `Connect` (log connections without Info's noise), `Info` (most verbose). Defaults to Notice
 - `MAXCLIENTS`: Tinyproxy creates one child process for each connected client. This options specifies the absolute highest number processes that will be created

### Advanced configuration

If you need a more advanced configuration, create a tinyproxy.conf outside the Docker container and use it inside:

```docker run -rm --name tinyproxy -p 8888:8888 -v ./tinyproxy.conf:/etc/tinyproxy.conf:ro" ajoergensen/tinyproxy```
