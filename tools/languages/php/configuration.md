# Configuration

## MariaDB & PostreSQL

- **php.ini** path:
  - Debian: **/etc/php/7.0/fpm/php.ini**
  - Arch Linux: **/etc/php/php.ini**

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
