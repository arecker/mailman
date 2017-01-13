FROM ubuntu:16.04
MAINTAINER Alex Recker <alex@reckerfamily.com>
RUN apt-get update && apt-get install -y dovecot-imapd
RUN groupadd -r mailman && useradd -r -g mailman mailman
COPY dovecot.conf /etc/dovecot/local.conf
RUN rm /etc/dovecot/conf.d/10-auth.conf
RUN mkdir -p /home/mailman/Maildir
RUN chown -R mailman:mailman /home/mailman
ENTRYPOINT ["dovecot"]
CMD ["-F"]
