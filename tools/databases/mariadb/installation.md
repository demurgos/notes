# MariaDB Installation

## Debian

```shell
# Run as root
apt-get install mariadb-server
```

Initialize the MariaDB directory

```shell
# Run as root
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
mysql_secure_installation
systemctl enable mysql
```

## Arch Linux

```shell
# Run as root
pacman -S mariadb
```
(This will create the user `mysql`)

Initialize the MariaDB directory

```shell
# Run as root
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```

Example:

```terminal
# mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
Installing MariaDB/MySQL system tables in '/var/lib/mysql' ...
2017-01-05 21:08:26 140574391078400 [Note] /usr/sbin/mysqld (mysqld 10.1.20-MariaDB) starting as process 19181 ...
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Using mutexes to ref count buffer pool pages
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: The InnoDB memory heap is disabled
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Compressed tables use zlib 1.2.8
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Using Linux native AIO
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Using SSE crc32 instructions
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Initializing buffer pool, size = 128.0M
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Completed initialization of buffer pool
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: The first specified data file ./ibdata1 did not exist: a new database to be created!
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Setting file ./ibdata1 size to 12 MB
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Database physically writes the file full: wait...
2017-01-05 21:08:27 140574391078400 [Note] InnoDB: Setting log file ./ib_logfile101 size to 48 MB
2017-01-05 21:08:29 140574391078400 [Note] InnoDB: Setting log file ./ib_logfile1 size to 48 MB
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Renaming log file ./ib_logfile101 to ./ib_logfile0
2017-01-05 21:08:32 140574391078400 [Warning] InnoDB: New log files created, LSN=45883
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Doublewrite buffer not found: creating new
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Doublewrite buffer created
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: 128 rollback segment(s) are active.
2017-01-05 21:08:32 140574391078400 [Warning] InnoDB: Creating foreign key constraint system tables.
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Foreign key constraint system tables created
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Creating tablespace and datafile system tables.
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Tablespace and datafile system tables created.
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Creating zip_dict and zip_dict_cols system tables.
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: zip_dict and zip_dict_cols system tables created.
2017-01-05 21:08:32 140574391078400 [Note] InnoDB: Waiting for purge to start
2017-01-05 21:08:32 140574391078400 [Note] InnoDB:  Percona XtraDB (http://www.percona.com) 5.6.34-79.1 started; log sequence number 0
2017-01-05 21:08:32 140573788862208 [Note] InnoDB: Dumping buffer pool(s) not yet started
2017-01-05 21:08:32 140574390483712 [Warning] Failed to load slave replication state from table mysql.gtid_slave_pos: 1146: Table 'mysql.gtid_slave_pos' doesn't exist
OK
Filling help tables...
2017-01-05 21:08:37 140104283393536 [Note] /usr/sbin/mysqld (mysqld 10.1.20-MariaDB) starting as process 19214 ...
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Using mutexes to ref count buffer pool pages
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: The InnoDB memory heap is disabled
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Compressed tables use zlib 1.2.8
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Using Linux native AIO
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Using SSE crc32 instructions
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Initializing buffer pool, size = 128.0M
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Completed initialization of buffer pool
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Highest supported file format is Barracuda.
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: 128 rollback segment(s) are active.
2017-01-05 21:08:37 140104283393536 [Note] InnoDB: Waiting for purge to start
2017-01-05 21:08:38 140104283393536 [Note] InnoDB:  Percona XtraDB (http://www.percona.com) 5.6.34-79.1 started; log sequence number 1622818
2017-01-05 21:08:38 140103682868992 [Note] InnoDB: Dumping buffer pool(s) not yet started
OK
Creating OpenGIS required SP-s...
2017-01-05 21:08:41 139670467366400 [Note] /usr/sbin/mysqld (mysqld 10.1.20-MariaDB) starting as process 19246 ...
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Using mutexes to ref count buffer pool pages
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: The InnoDB memory heap is disabled
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Compressed tables use zlib 1.2.8
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Using Linux native AIO
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Using SSE crc32 instructions
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Initializing buffer pool, size = 128.0M
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Completed initialization of buffer pool
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Highest supported file format is Barracuda.
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: 128 rollback segment(s) are active.
2017-01-05 21:08:41 139670467366400 [Note] InnoDB: Waiting for purge to start
2017-01-05 21:08:41 139670467366400 [Note] InnoDB:  Percona XtraDB (http://www.percona.com) 5.6.34-79.1 started; log sequence number 1622828
2017-01-05 21:08:41 139669866006272 [Note] InnoDB: Dumping buffer pool(s) not yet started
OK

To start mysqld at boot time you have to copy
support-files/mysql.server to the right place for your system

PLEASE REMEMBER TO SET A PASSWORD FOR THE MariaDB root USER !
To do so, start the server, then issue the following commands:

'/usr/bin/mysqladmin' -u root password 'new-password'
'/usr/bin/mysqladmin' -u root -h cyan password 'new-password'

Alternatively you can run:
'/usr/bin/mysql_secure_installation'

which will also give you the option of removing the test
databases and anonymous user created by default.  This is
strongly recommended for production servers.

See the MariaDB Knowledgebase at http://mariadb.com/kb or the
MySQL manual for more instructions.

You can start the MariaDB daemon with:
cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'

You can test the MariaDB daemon with mysql-test-run.pl
cd '/usr/mysql-test' ; perl mysql-test-run.pl

Please report any problems at http://mariadb.org/jira

The latest information about MariaDB is available at http://mariadb.org/.
You can find additional information about the MySQL part at:
http://dev.mysql.com
Consider joining MariaDB's strong and vibrant community:
https://mariadb.org/get-involved/

```

Then run:
```shell
# Run as root
systemctl start mariadb
mysql_secure_installation
```

Example
```shell
root@cyan /etc/nginx
# systemctl start mariadb     
root@cyan /etc/nginx
# mysql_secure_installation

NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MariaDB
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!

In order to log into MariaDB to secure it, we'll need the current
password for the root user.  If you've just installed MariaDB, and
you haven't set the root password yet, the password will be blank,
so you should just press enter here.

Enter current password for root (enter for none): 
OK, successfully used password, moving on...

Setting the root password ensures that nobody can log into the MariaDB
root user without the proper authorisation.

Set root password? [Y/n] Y
New password: 
Re-enter new password: 
Password updated successfully!
Reloading privilege tables..
 ... Success!


By default, a MariaDB installation has an anonymous user, allowing anyone
to log into MariaDB without having to have a user account created for
them.  This is intended only for testing, and to make the installation
go a bit smoother.  You should remove them before moving into a
production environment.

Remove anonymous users? [Y/n] Y
 ... Success!

Normally, root should only be allowed to connect from 'localhost'.  This
ensures that someone cannot guess at the root password from the network.

Disallow root login remotely? [Y/n] Y
 ... Success!

By default, MariaDB comes with a database named 'test' that anyone can
access.  This is also intended only for testing, and should be removed
before moving into a production environment.

Remove test database and access to it? [Y/n] Y
 - Dropping test database...
 ... Success!
 - Removing privileges on test database...
 ... Success!

Reloading the privilege tables will ensure that all changes made so far
will take effect immediately.

Reload privilege tables now? [Y/n] Y
 ... Success!

Cleaning up...

All done!  If you've completed all of the above steps, your MariaDB
installation should now be secure.

Thanks for using MariaDB!
```

## Enable / start

```shell
# Run as root
systemctl enable mariadb
systemctl start mariadb
```
