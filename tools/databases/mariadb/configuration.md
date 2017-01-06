# MariaDB Configuration

## Configuration

Edit **/etc/mysql/my.cnf**

Add the following lines under `[mysqld]`:

```text
# [mysqld]
# ...
init_connect                = 'SET collation_connection = utf8_general_ci,NAMES utf8'
collation_server            = utf8_general_ci
character_set_client        = utf8
character_set_server        = utf8
```

## Connection

```shell
# Run as a normal user
mysql --user=username -p [db_name]
```

- `-p`: Prompt the password
- `--password="mypassword"` otherwise (will be logged in history)

Example for _root_, on no database:
```terminal
mysql --user=root
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
