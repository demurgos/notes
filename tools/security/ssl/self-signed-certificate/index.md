# Self-Signed Certificate

Self-Signed certificates should only be used for development.
If you are deploying a server, use [Letsencrypt][notes-letsencrypt]
to issue certificates.

## Dependencies

## Configuration

I'd recommend to place the self signed certificate at **/etc/nginx/dev-certificate**.

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


[notes-letsencrypt]: ../../../server/letsencrypt/index.md
