# Start dovecot server
dovecot

# Start offlineimap
cd /home/docker
IMAP_USER=$IMAP_USER IMAP_PASSWORD=$IMAP_PASSWORD offlineimap -c .offlineimaprc
