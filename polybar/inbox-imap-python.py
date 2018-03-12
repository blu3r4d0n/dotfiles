#!/usr/bin/python

import imaplib

obj = imaplib.IMAP4_SSL('imap.gmail.com', 993)
obj.login('***REMOVED***', '***REMOVED***')
obj.select()

print(len(obj.search(None, 'unseen')[1][0].split()))

