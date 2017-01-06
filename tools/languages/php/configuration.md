# Configuration

## MariaDB & PostreSQL

In **/etc/php/php.ini**, make sure that the following lines are uncommented:

```php.ini
extension=mysqli.so
extension=pdo_mysql.so
extension=pdo_pgsql.so
```

Restart _php-fpm_:
```shell
systemctl restart php-fpm
```
