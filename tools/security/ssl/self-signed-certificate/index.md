# Self-Signed Certificate

Self-Signed certificates should only be used for development.
If you are deploying a server, use [Letsencrypt][notes-letsencrypt]
to issue certificates.

## Dependencies

## Configuration

I'd recommend to place the self signed certificate at **/etc/nginx/dev-certificate/**.

Copy **config.openssl** (from this direcotory) to the directory that will contain your certificate.

Edit the `[ alt_names ]` section to add new domain names, then generate the certificate.

## Generate a certificate

```shell
# Run as a user with write rights on the directory
openssl genrsa -out privatekey.pem
openssl req -new -key privatekey.pem -config config.openssl -out csr.pem
openssl x509 -req -extensions v3_req -days 365 -in csr.pem -signkey privatekey.pem -out certificate.pem -extfile config.openssl
```

You will get:
- **certificate.pem**: The certificate.
- **privatekey.pem**: Keep it private!
- **csr.pem**: A temporary file describing the request of the certificate creation (you can delete it).

## Add it to the trusted certificates


```sh
# Run as root
mkdir --parents /usr/share/ca-certificates/local
cp certificate.pem /usr/share/ca-certificates/local/dev.crt
```

The `crt` extension inside `/usr/share/ca-certificates` is required.

```sh
# Run as root
nano /etc/ca-certificates.conf
```

Add `local/dev.crt` at the top.

```sh
# Run as root
update-ca-certificates
```

[notes-letsencrypt]: ../../../server/letsencrypt/index.md
