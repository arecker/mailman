import os

FOLDER_MAP = {
    'archive': '[Gmail]/All Mail',
    'drafts': '[Gmail]/Drafts',
    'important': '[Gmail]/Important',
    'sent': '[Gmail]/Sent Mail',
    'spam': '[Gmail]/Spam',
    'starred': '[Gmail]/Starred',
    'trash': '[Gmail]/Trash',
}

INVERTED_FOLDER_MAP = dict([
    (v, k) for k, v
    in FOLDER_MAP.items()
])


def to_remote(local):
    try:
        return FOLDER_MAP[local]
    except KeyError:
        return local


def to_local(remote):
    try:
        return INVERTED_FOLDER_MAP[remote]
    except KeyError:
        return remote


def get_user():
    return os.environ['IMAP_USER']


def get_password():
    return os.environ['IMAP_PASSWORD']
