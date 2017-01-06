# Creating a new database

## Creating a user

```
# Run as `postgres`
createuser --encrypted --interactive --pwprompt
```

This will create a PostgreSQL user. If you use the same username as for your
login account, you won't have to type it (it defaults to the Linux username).

Example:

```terminal
[postgres] $ createuser --interactive
Enter name of role to add: demurgos
Shall the new role be a superuser? (y/n) y
```

## Create a databse

```shell
# Run as `postgres`
createdb --username=dbuser dbname
```

## Remove Postgres user

```shell
# Run as `postgres`
dropuser dbuser
```

## Remove Database

```shell
# Run as `postgres`
dropdb dbname
```
