#!/usr/bin/env bash
sed -i "s|<IMAP_USER>|${IMAP_USER}|g" ~/.mbsyncrc
sed -i "s|<IMAP_PASSWORD>|${IMAP_PASSWORD}|g" ~/.mbsyncrc
mbsync -a
