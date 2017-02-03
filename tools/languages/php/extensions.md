# PHP Extensions

Edit your **php.ini** file to enable extensions.

In Debian, the packages seems to be enabled in `/etc/php/7.0/mods-available/`

extensions   | Debian package | Arch Linux package
-------------|----------------|-------------------
mysqli.so    | php-fpm        | php-fpm
pdo_mysql.so | php-fpm        | php-fpm
dom.so       | php-xml        | php-fpm
simplexml.so | php-xml        | php-fpm
wddx.so      | php-xml        | php-fpm
xml.so       | php-xml        | php-fpm
xmlreader.so | php-xml        | php-fpm
xmlwriter.so | php-xml        | php-fpm
xsl.so       | php-xml        | php-fpm
zip.so       | php-zip        | php-fpm
mysqli.so    | php-mysql      | php-fpm
mysqlnd.so   | php-mysql      | php-fpm
pdo_mysql.so | php-mysql      | php-fpm
