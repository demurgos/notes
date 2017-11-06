# MariaDB Configuration

**References**
- https://wiki.archlinux.org/index.php/MySQL#Configuration

## Unicode support

You have to configure MariaDB to use the `utf8mb4` instead of the default `utf8` charset.
For compatibility reasonsm, the default charset used by MariaDB is based on an old version of Unicode.
The `utf8` charset uses up to 3 bytes per codepoint while `utf8mb4` is able to use 4 bytes.
This means that the codepoints outside of the Basic Multilnear Plane (BMP) (emojis, some chinese
characters, etc.) are not reachable with the old `utf8` charset.

See: [What is the difference between utf8mb4 and utf8 charsets in mysql?][so-charsets]

Edit your global MariaDB / MySQL config file:

- **Server encoding**

  - Debian: **/etc/mysql/mariadb.conf.d/50-server.cnf**
  - Arch Linux: **/etc/mysql/my.cnf**
  
  ```text
  # [mysqld]
  # ...
  # Encoding
  init_connect = 'SET collation_connection = utf8mb4_general_ci, NAMES utf8mb4'
  collation_server = utf8mb4_general_ci
  character_set_client = utf8mb4
  character_set_server = utf8mb4
  ```

- **Client encoding**

  - Debian: **/etc/mysql/mariadb.conf.d/50-client.cnf**
  - Arch Linux: **/etc/mysql/my.cnf**
  
  ```text
  [client]
  # ...
  # Encoding
  default-character-set = utf8mb4
  
  ```

[so-charsets]: https://stackoverflow.com/questions/30074492/what-is-the-difference-between-utf8mb4-and-utf8-charsets-in-mysql
