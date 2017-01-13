# MariaDB Configuration

## Configuration

Edit your global MySQL config file:
- Debian: **/etc/mysql/mariadb.conf.d/50-server.cnf**
- Arch Linux: **/etc/mysql/my.cnf**

Ensure that the following lines are set for `[mysqld]`:

```text
# [mysqld]
# ...
# Encoding
init_connect = 'SET collation_connection = utf8mb4_general_ci, NAMES utf8mb4'
collation_server = utf8mb4_general_ci
character_set_client = utf8mb4
character_set_server = utf8mb4
```

- Debian: **/etc/mysql/mariadb.conf.d/50-client.cnf**
- Arch Linux: **/etc/mysql/my.cnf**

```text
[client]
# ...
# Encoding
default-character-set = utf8mb4

```

- `utf8`: 1 to 3 bytes
- `utf8mb4`: 1 to 4 bytes

You need `utf8mb4` to display characters outside of the Basic Multilingual Plane (BMP), otherwise
it does not handle them at all.

https://stackoverflow.com/questions/30074492/what-is-the-difference-between-utf8mb4-and-utf8-charsets-in-mysql

## Connection

```shell
# Run as a normal user
mysql --user=username -p [db_name]
```

- `-p`: Prompt the password
- `--password="mypassword"` otherwise (will be logged in history)

Example for _root_, on no database:
```terminal
mysql --user=root -p
```

## Users

### List users

```mysql
SELECT * FROM mysql.user;
```

### Create user and add permissions

```mysql
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password01';
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
```

## Databases

### List databases

```mysql
SHOW DATABASES;
```

### Print the selected database

```mysql
SELECT database();
```

### Select a database

```mysql
USE database_name;
```

### Create database

```mysql
CREATE DATABASE IF NOT EXISTS database_name;
```

### Remove database

```mysql
DROP DATABASE IF EXISTS database_name;
```

## References

- https://wiki.archlinux.org/index.php/MySQL#Configuration
