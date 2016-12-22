FROM ubuntu:14.04
MAINTAINER alex@reckerfamily.com
RUN apt-get update && apt-get install -y ca-certificates offlineimap dovecot-imapd
RUN groupadd -r docker && useradd -rm -s /bin/bash -g docker docker
RUN rm /etc/dovecot/conf.d/10-auth.conf
COPY dovecot.conf /etc/dovecot/local.conf
COPY offlineimap.conf /home/docker/.offlineimaprc
COPY offlineimap.py /home/docker/.offlineimap.py
RUN mkdir -p /home/docker/Maildir
RUN chown -R docker:docker /home/docker
RUN chmod -R 775 /home/docker/Maildir
COPY entry.sh /entry.sh
ENTRYPOINT "/entry.sh"
