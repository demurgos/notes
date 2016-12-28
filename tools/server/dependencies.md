## Debian

- curl
- build-essential
- nano
- sudo
- nginx
- **dovecot-core**: secure mail server that supports mbox, maildir, dbox and mdbox mailboxes 
- **dovecot-imapd**: secure IMAP server that supports mbox, maildir, dbox and mdbox mailboxes 
- **dovecot-managesieved**: secure ManageSieve server for Dovecot 
- **dovecot-pop3d**: secure POP3 server that supports mbox, maildir, dbox and mdbox mailboxes 
- **postfix**: High-performance mail transport agent
  **Choose "Internet site" and the main domain name when prompted**
- opendkim: mail (DomainKeys Identified Mail)
- opendkim-tools: mail (DomainKeys Identified Mail)
- certbot
- mongodb-org (see mongodb)
- cron
- nodejs: See `node`
- iptables-persistent (save both current IPv4 and IPv6)
- git

```
# Mail
apt-get install dovecot-core dovecot-imapd dovecot-managesieved dovecot-pop3d postfix
```

## npm

- forever
- typings

