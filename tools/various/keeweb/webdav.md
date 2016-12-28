# WebDAV support for KeeWeb

## nginx

KeeWeb requires the following _nginx_ rules:

```nginx
add_header 'Access-Control-Allow-Origin' '*';
add_header 'Access-Control-Allow-Credentials' 'true';
add_header 'Access-Control-Allow-Methods' 'GET, HEAD, POST, PUT, OPTIONS, MOVE, DELETE, COPY, LOCK, UNLOCK';
add_header 'Access-Control-Allow-Headers' 'Authorization,DNT,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,X-Accept-Charset,X-Accept,origin,accept,if-match,destination, overwrite';
add_header 'Access-Control-Expose-Headers' 'ETag';
add_header 'Access-Control-Max-Age' 1728000;
if ($request_method = 'OPTIONS') {
    add_header 'Content-Type' 'text/plain charset=UTF-8';
    add_header 'Content-Length' 0;
    return 204;
}
```
