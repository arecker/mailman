FROM ubuntu:14.04
MAINTAINER alex@reckerfamily.com
RUN apt-get update && apt-get install -y supervisor ca-certificates offlineimap dovecot-imapd
RUN mkdir -p /var/log/supervisor
RUN groupadd -r docker && useradd -rm -s /bin/bash -g docker docker
RUN rm /etc/dovecot/conf.d/10-auth.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY dovecot.conf /etc/dovecot/local.conf
COPY offlineimap.conf /home/docker/.offlineimaprc
COPY offlineimap.py /home/docker/.offlineimap.py
RUN mkdir -p /home/docker/Maildir
RUN chown -R docker:docker /home/docker
VOLUME ["/home/docker/Maildir"]
CMD ["/usr/bin/supervisord"]
