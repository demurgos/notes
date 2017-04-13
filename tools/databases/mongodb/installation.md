# Mongodb installation

## Installation

### Debian

```shell
# Run as root
apt-get install mongodb
```

#### Manual installation

https://docs.mongodb.com/master/tutorial/install-mongodb-on-debian/

**2016-12-10**

```shell
# Run as root
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [arch=amd64] http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
apt-get update
apt-get install mongodb-org
service mongod stop
```

### Clean default data

Then comment out everything in `/etc/mongod.conf`.
And remove everything in `/var/lib/mongodb`:
```shell
# Run as root
rm -r /var/lib/mongodb
rm -r /var/log/mongodb
```

## User access

The following instructions expect that the bin directory of MongoDB is in your PATH.
You do not have to add it to the PATH, just write the full location to the binaries.

Choose a directory to store your database (ie. `./data/db`). Then open a terminal:
```shell
# Run as a normal user
mongod --storageEngine wiredTiger --dbpath . --port 50314
```

While this process is running, open an other terminal to configure the access to the database.
We will create two users: The first one will be used for the administration of the DB.
The second user will be used by the application and have restricted privileges.

Enter the mongo shell with:

```shell
# Run as a normal user
mongo localhost:50314
```

Now, the following commands to create the users we need.
```text
use admin
db.createUser({user: "root", pwd: "rootPassword", roles: ["root"]})
use main
db.createUser({user: "user", pwd: "userPassword", roles: ["readWrite"]})
```

Once you're done you can close the mongo shell and the mongo daemon.
