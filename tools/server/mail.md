# Mail

Dependencies:

```
sudo apt-get install dovecot-core dovecot-imapd dovecot-managesieved dovecot-pop3d postfix
```

## Postfix

The configuration of postfix is in `/etc/postfix/`.
Replace `main.cf` and `master.cf` with the ones in `resources/postfix`.



### Aliases

Update `/etc/aliases` and refresh:
```text
# target: alias1, alias2, ...
demurgos: demurgos@demurgos.net
```

Refresh aliases database with:
```shell
newaliases
```


Eventually, add a canonical name for outgoing mail in `/etc/postfix/canonical`
and refresh:
```shell
postmap /etc/postfix/canonical
```

### Virtual users

Create the file `/etc/postfix/virtual-mailbox-domains` as:
```text
demurgos.net OK
```
And generate the associated db:
```postman
postmap /etc/postfix/virtual-mailbox-domains
```

And for the users, create `/etc/postfix/virtual-mailbox-users` as:
```text
demurgos@demurgos.net demurgos@demurgos.net
```
And generate the associated db:
```postman
postmap /etc/postfix/virtual-mailbox-users
```


Repeat with actual aliases in `/etc/postfix/virtual` as:

```text
# You need to repeat the real user
demurgos@demurgos.net demurgos@demurgos.net
# catch-all:
# @demurgos.net demurgos@demurgos.net
contact@demurgos.net demurgos@demurgos.net
```

And generate the associated db:
```postman
postmap /etc/postfix/virtual
```

### Reload

```
service postfix restart
# Or:
# postfix reload
```

### Accounts for virtual users' mail

Create the vmail user and account:

```shell
groupadd vmail
useradd vmail -g vmail --home-dir /var/mail/vmail --create-home
```

### Dovecot

Configuration directory: `/etc/dovecot`

Copy `dovecot/01-mail-stack-delivery.conf` to `/etc/dovecot/conf.d/01-mail-stack-delivery.conf`.


- Edit `conf.d/10-ssl.conf` and comment out `ssl`.
- Edit `conf.d/10-mail.conf` and comment out `mail_location`.
- Edit `conf.d/10-auth.conf` and comment out `auth_mechanisms = plain`.
- Edit `conf.d/auth-system.conf.ext` and make sure the blocks `passdb` and
  `userdb` blocks are commented out.

**Generate passwords**:
```shell
# Use salted SHA-512
doveadm pw -s SSHA512
```
Store passwords in `/etc/dovecot/passwd.db`. One entry (name@domain:pass) per line:
```
user@example.com:{SSHA512}OeR5ulGD3LZ0OHuj9muNqSvKB7hxsxnTquSd8AjK8QXrtOAGqxhxdRs093CzcuaX1PXmOkBGXbQCftYc0tpbo83uZ7Y=
```

Copy `dovecot/15-mailboxes.conf` to `/etc/dovecot/conf.d/15-mailboxes.conf`.

Restart dovecot:
```shell
service dovecot restart
```

### OpenDKIM

Install:
```shell
apt-get install opendkim opendkim-tools
```

## References:

- [Part 1][part1]
- [Part 2][part2]
- [Part 3][part3]
- [Part 4][part4]

[part1]: http://arstechnica.com/information-technology/2014/02/how-to-run-your-own-e-mail-server-with-your-own-domain-part-1/
[part2]: http://arstechnica.com/information-technology/2014/03/taking-e-mail-back-part-2-arming-your-server-with-postfix-dovecot/
[part3]: http://arstechnica.com/business/2014/03/taking-e-mail-back-part-3-fortifying-your-box-against-spammers/
[part4]: http://arstechnica.com/information-technology/2014/04/taking-e-mail-back-part-4-the-finale-with-webmail-everything-after/
