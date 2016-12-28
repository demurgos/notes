## SSH bruteforce

Use `fail2ban`

**TODO**

https://www.linode.com/docs/security/securing-your-server

## Firewall

**TODO**: move to `nftables` ?

Install `iptables` and `iptables-persitent`.

The configuration files are:
- IPv4: `/etc/iptables/rules.v4`
- IPv6: `/etc/iptables/rules.v6`

### Installation

1. Go to `/etc/iptables`
2. Check the saved content of `rules.v4` and `rules.v6`
3. Remove all the files in the current directory
4. Copy the resource `iptables/rules.v4` to `rules.v4`
4. Copy the resource `iptables/rules.v6` to `rules.v6`
6. Reboot


### Apply rules

Rules are applied automatically at boot

```shell
reboot
```

You can also use the following command but **it currently breaks fail2ban**:
```shell
# Reload but breaks fail2ban
netfilter-persistent reload
```

### Iptables format explanation

[Source](http://www.faqs.org/docs/iptables/iptables-save.html)

- Comment lines:

  Starts with `#`.
  
  Example: `# This is a comment`

- Table:

  ```text
  "*" TABLE_NAME
  ```
  
  Example: `*filter`

- Chain declaration:

  ```text
  ":" CHAIN_NAME POLICY "[" INITIAL_PACKETS_COUNT ":" INITIAL_BYTES_COUNT "]"
  ```
  
  Example: `:INPUT DROP [0:0]`

- Commit:

  `"COMMIT"`
  
  Example: `COMMIT`
  
- Rules

  Every other line is treated as a rule with the same syntax as the command
  line.



## Reference:

- https://linux.die.net/man/8/iptables

- https://www.digitalocean.com/community/tutorials/how-to-set-up-an-iptables-firewall-to-protect-traffic-between-your-servers

- http://bencane.com/2012/09/17/iptables-linux-firewall-rules-for-a-basic-web-server/

- https://gist.github.com/jirutka/3742890

- http://www.netfilter.org/documentation/HOWTO/packet-filtering-HOWTO.html

- http://www.faqs.org/docs/iptables/iptables-save.html
