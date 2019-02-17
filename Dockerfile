# JKA logstash based on the official Logstash image, itself based on CentOS 7
FROM docker.elastic.co/logstash/logstash:6.6.0
LABEL maintainer="Fabien Crespel <fabien@crespel.net>"

# Stomp output plugin
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-stomp

# Files
COPY ./root /
