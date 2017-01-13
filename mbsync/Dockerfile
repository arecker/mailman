FROM ubuntu:16.04
MAINTAINER Alex Recker <alex@reckerfamily.com>
RUN apt-get update && apt-get install -y isync ca-certificates
RUN groupadd -r mailman && useradd -r -g mailman mailman
RUN mkdir -p /home/mailman/Maildir
COPY mbsync.conf /home/mailman/.mbsyncrc
COPY entry.sh /home/mailman/entry.sh
RUN chown -R mailman:mailman /home/mailman
USER mailman
WORKDIR /home/mailman
ENTRYPOINT ["/home/mailman/entry.sh"]
