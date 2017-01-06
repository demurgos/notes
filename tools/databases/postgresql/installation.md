# Postgresql Installation

## Debian

## Arch Linux

```shell
# Run as root
pacman -S postgresql
su - postrgres
```

Then run the commands as the `postgres` user.

```
# Run as `postgres`
POSTGRES_DATA_DIRECTORY="/path/to/postgres/data/"
initdb --locale "en_US.UTF-8" --encoding="UTF8" --pgdata=$POSTGRES_DATA_DIRECTORY
```

Example:
```terminal
[postgres] $ initdb --locale "en_US.UTF-8" --encoding="UTF8" --pgdata="/var/lib/postgres/data/"
The files belonging to this database system will be owned by user "postgres".
This user must also own the server process.

The database cluster will be initialized with locale "en_US.UTF-8".
The default text search configuration will be set to "english".

Data page checksums are disabled.

fixing permissions on existing directory /var/lib/postgres/data ... ok
creating subdirectories ... ok
selecting default max_connections ... 100
selecting default shared_buffers ... 128MB
selecting dynamic shared memory implementation ... posix
creating configuration files ... ok
running bootstrap script ... ok
performing post-bootstrap initialization ... ok
syncing data to disk ... ok

WARNING: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.

Success. You can now start the database server using:

    pg_ctl -D /var/lib/postgres/data -l logfile start

[postgres] $ pg_ctl -D /var/lib/postgres/data -l /var/lib/postgres/data/logfile start
server starting
```

It should output something like:
```
WARNING: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.

pg_ctl -D /path/to/postgres/data/ -l logfile start
```

Then run as root

```
# Run as root
pg_ctl -D /path/to/postgres/data/ -l logfile start
```

TODO: find how to use a service like:
```shell
systemctl start postgres
```


Default port: `5432` (and `58689` ?).



https://wiki.archlinux.org/index.php/PostgreSQL
