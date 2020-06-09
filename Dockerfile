FROM daocloud.io/java:7

ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

RUN echo "sshd:ALL" >> /etc/hosts.allow

RUN mkdir -p /var/www
VOLUME /var/www
WORKDIR /var/www
ENTRYPOINT ["/bin/bash", "/start.sh"]
