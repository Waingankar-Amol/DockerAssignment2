FROM ubuntu:latest
RUN  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mysql-server \
    php 
WORKDIR /root/
COPY start-script.sh /root/
RUN chmod +x /root/start-script.sh 
ENTRYPOINT ["/bin/bash", "/root/start-script.sh"]
