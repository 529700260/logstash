FROM  index.docker.io/library/java

ADD ./start.sh /start.sh
RUN  chmod 755 /start.sh
RUN mkdir -p /var/www
VOLUME /var/www
WORKDIR /var/www
RUN  chmod 755 /var/www
ENTRYPOINT ["/bin/bash", "/start.sh"]
