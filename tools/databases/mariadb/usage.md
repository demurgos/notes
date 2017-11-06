# MariaDB usage

This article mainly deals with the command line interface.

## Connection

```shell
# Run as a normal user
mysql --user=username -p [db_name]
```

- `-p`: Prompt the password
- `--password="mypassword"` otherwise (**DANGER**: this will be logged in the bash history)

Example for _root_, on no database:
```shell
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
