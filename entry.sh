# Start dovecot server
dovecot

# Start offlineimap as non-privileged user
su - docker -c "IMAP_USER=$IMAP_USER IMAP_PASSWORD=$IMAP_PASSWORD offlineimap"
