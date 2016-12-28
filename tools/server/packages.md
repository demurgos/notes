# List packages

```
dpkg-query -l
```

fresh (Debian 8):

```text
Desired=Unknown/Install/Remove/Purge/Hold                                                                                                                                                                                                   
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                                                  Version                         Architecture                    Description
+++-=====================================================-===============================-===============================-===============================================================================================================
ii  acl                                                   2.2.52-2                        amd64                           Access control list utilities
ii  adduser                                               3.113+nmu3                      all                             add and remove users and groups
ii  apt                                                   1.0.9.8.3                       amd64                           commandline package manager
rc  autofs                                                5.0.8-2                         amd64                           kernel-based automounter for Linux
ii  base-files                                            8+deb8u4                        amd64                           Debian base system miscellaneous files
ii  base-passwd                                           3.5.37                          amd64                           Debian base system master password and group files
ii  bash                                                  4.3-11+b1                       amd64                           GNU Bourne Again SHell
ii  bsdmainutils                                          9.0.6                           amd64                           collection of more utilities from FreeBSD
ii  bsdutils                                              1:2.25.2-6                      amd64                           basic utilities from 4.4BSD-Lite
ii  coreutils                                             8.23-4                          amd64                           GNU core utilities
ii  cpio                                                  2.11+dfsg-4.1+deb8u1            amd64                           GNU cpio -- a program to manage archives of files
ii  dash                                                  0.5.7-4+b1                      amd64                           POSIX-compliant shell
ii  dbus                                                  1.8.20-0+deb8u1                 amd64                           simple interprocess messaging system (daemon and utilities)
ii  debconf                                               1.5.56                          all                             Debian configuration management system
ii  debconf-i18n                                          1.5.56                          all                             full internationalization support for debconf
ii  debian-archive-keyring                                2014.3                          all                             GnuPG archive keys of the Debian archive
ii  debianutils                                           4.4+b1                          amd64                           Miscellaneous utilities specific to Debian
ii  dialog                                                1.2-20140911-1                  amd64                           Displays user-friendly dialog boxes from shell scripts
ii  diffutils                                             1:3.3-1+b1                      amd64                           File comparison utilities
ii  dmsetup                                               2:1.02.90-2.2                   amd64                           Linux Kernel Device Mapper userspace library
ii  dpkg                                                  1.17.26                         amd64                           Debian package management system
ii  dselect                                               1.17.26                         amd64                           Debian package management front-end
ii  e2fslibs:amd64                                        1.42.12-1.1                     amd64                           ext2/ext3/ext4 file system libraries
ii  ed                                                    1.10-2                          amd64                           classic UNIX line editor
ii  findutils                                             4.4.2-9+b1                      amd64                           utilities for finding files--find, xargs
ii  gawk                                                  1:4.1.1+dfsg-1                  amd64                           GNU awk, a pattern scanning and processing language
ii  gcc-4.8-base:amd64                                    4.8.4-1                         amd64                           GCC, the GNU Compiler Collection (base package)
ii  gcc-4.9-base:amd64                                    4.9.2-10                        amd64                           GCC, the GNU Compiler Collection (base package)
ii  gettext-base                                          0.19.3-2                        amd64                           GNU Internationalization utilities for the base system
ii  gnupg                                                 1.4.18-7+deb8u1                 amd64                           GNU privacy guard - a free PGP replacement
ii  gpgv                                                  1.4.18-7+deb8u1                 amd64                           GNU privacy guard - signature verification tool
ii  grep                                                  2.20-4.1                        amd64                           GNU grep, egrep and fgrep
ii  groff-base                                            1.22.2-8                        amd64                           GNU troff text-formatting system (base system components)
ii  gzip                                                  1.6-4                           amd64                           GNU compression utilities
ii  hostname                                              3.15                            amd64                           utility to set/show the host name or domain name
ii  ifupdown                                              0.7.53.1                        amd64                           high level tools to configure network interfaces
ii  init-system-helpers                                   1.22                            all                             helper tools for all init systems
ii  initramfs-tools                                       0.120+deb8u1                    all                             generic modular initramfs generator
ii  initscripts                                           2.88dsf-59                      amd64                           scripts for initializing and shutting down the system
ii  insserv                                               1.14.0-5                        amd64                           boot sequence organizer using LSB init.d script dependency information
ii  install-info                                          5.2.0.dfsg.1-6                  amd64                           Manage installed documentation in info format
ii  iproute2                                              3.16.0-2                        amd64                           networking and traffic control tools
ii  iptables                                              1.4.21-2+b1                     amd64                           administration tools for packet filtering and NAT
ii  iputils-ping                                          3:20121221-5+b2                 amd64                           Tools to test the reachability of network hosts
ii  klibc-utils                                           2.0.4-2                         amd64                           small utilities built with klibc for early boot
ii  kmod                                                  18-3                            amd64                           tools for managing Linux kernel modules
ii  less                                                  458-3                           amd64                           pager program similar to more
ii  libacl1:amd64                                         2.2.52-2                        amd64                           Access control list shared library
ii  libapparmor1:amd64                                    2.9.0-3                         amd64                           changehat AppArmor library
ii  libapt-pkg4.12:amd64                                  1.0.9.8.3                       amd64                           package management runtime library
ii  libasprintf0c2:amd64                                  0.19.3-2                        amd64                           GNU library to use fprintf and friends in C++
ii  libattr1:amd64                                        1:2.4.47-2                      amd64                           Extended attribute shared library
ii  libaudit-common                                       1:2.4-1                         all                             Dynamic library for security auditing - common files
ii  libaudit1:amd64                                       1:2.4-1+b1                      amd64                           Dynamic library for security auditing
ii  libblkid1:amd64                                       2.25.2-6                        amd64                           block device id library
ii  libbsd0:amd64                                         0.7.0-2                         amd64                           utility functions from BSD systems - shared library
ii  libbz2-1.0:amd64                                      1.0.6-7+b3                      amd64                           high-quality block-sorting file compressor library - runtime
ii  libc-bin                                              2.19-18+deb8u4                  amd64                           GNU C Library: Binaries
ii  libc6:amd64                                           2.19-18+deb8u4                  amd64                           GNU C Library: Shared libraries
ii  libcap-ng0:amd64                                      0.7.4-2                         amd64                           An alternate POSIX capabilities library
ii  libcap2:amd64                                         1:2.24-8                        amd64                           POSIX 1003.1e capabilities (library)
ii  libcap2-bin                                           1:2.24-8                        amd64                           POSIX 1003.1e capabilities (utilities)
ii  libcomerr2:amd64                                      1.42.12-1.1                     amd64                           common error description library
ii  libcryptsetup4:amd64                                  2:1.6.6-5                       amd64                           disk encryption support - shared library
ii  libdb5.3:amd64                                        5.3.28-9                        amd64                           Berkeley v5.3 Database Libraries [runtime]
ii  libdbus-1-3:amd64                                     1.8.20-0+deb8u1                 amd64                           simple interprocess messaging system (library)
ii  libdebconfclient0:amd64                               0.192                           amd64                           Debian Configuration Management System (C-implementation library)
ii  libdevmapper1.02.1:amd64                              2:1.02.90-2.2                   amd64                           Linux Kernel Device Mapper userspace library
ii  libedit2:amd64                                        3.1-20140620-2                  amd64                           BSD editline and history libraries
ii  libestr0                                              0.1.9-1.1                       amd64                           Helper functions for handling strings (lib)
ii  libevent-2.0-5:amd64                                  2.0.21-stable-2                 amd64                           Asynchronous event notification library
ii  libexpat1:amd64                                       2.1.0-6+deb8u1                  amd64                           XML parsing C library - runtime library
ii  libffi6:amd64                                         3.1-2+b2                        amd64                           Foreign Function Interface library runtime
ii  libgcc1:amd64                                         1:4.9.2-10                      amd64                           GCC support library
ii  libgcrypt20:amd64                                     1.6.3-2+deb8u1                  amd64                           LGPL Crypto library - runtime library
ii  libgdbm3:amd64                                        1.8.3-13.1                      amd64                           GNU dbm database routines (runtime version)
ii  libgmp10:amd64                                        2:6.0.0+dfsg-6                  amd64                           Multiprecision arithmetic library
ii  libgnutls-deb0-28:amd64                               3.3.8-6+deb8u3                  amd64                           GNU TLS library - main runtime library
ii  libgnutls-openssl27:amd64                             3.3.8-6+deb8u3                  amd64                           GNU TLS library - OpenSSL wrapper
ii  libgpg-error0:amd64                                   1.17-3                          amd64                           library for common error values and messages in GnuPG components
ii  libgpm2:amd64                                         1.20.4-6.1+b2                   amd64                           General Purpose Mouse - shared library
ii  libgssapi-krb5-2:amd64                                1.12.1+dfsg-19+deb8u2           amd64                           MIT Kerberos runtime libraries - krb5 GSS-API Mechanism
ii  libhogweed2:amd64                                     2.7.1-5+deb8u1                  amd64                           low level cryptographic library (public-key cryptos)
ii  libicu52:amd64                                        52.1-8+deb8u3                   amd64                           International Components for Unicode
ii  libidn11:amd64                                        1.29-1+b2                       amd64                           GNU Libidn library, implementation of IETF IDN specifications
ii  libjson-c2:amd64                                      0.11-4                          amd64                           JSON manipulation library - shared library
ii  libk5crypto3:amd64                                    1.12.1+dfsg-19+deb8u2           amd64                           MIT Kerberos runtime libraries - Crypto Library
ii  libkeyutils1:amd64                                    1.5.9-5+b1                      amd64                           Linux Key Management Utilities (library)
ii  libklibc                                              2.0.4-2                         amd64                           minimal libc subset for use with initramfs
ii  libkmod2:amd64                                        18-3                            amd64                           libkmod shared library
ii  libkrb5-3:amd64                                       1.12.1+dfsg-19+deb8u2           amd64                           MIT Kerberos runtime libraries
ii  libkrb5support0:amd64                                 1.12.1+dfsg-19+deb8u2           amd64                           MIT Kerberos runtime libraries - Support library
ii  libldap-2.4-2:amd64                                   2.4.40+dfsg-1+deb8u2            amd64                           OpenLDAP libraries
ii  liblocale-gettext-perl                                1.05-8+b1                       amd64                           module using libc functions for internationalization in Perl
ii  liblogging-stdlog0:amd64                              1.0.4-1                         amd64                           easy to use and lightweight logging library
ii  liblognorm1:amd64                                     1.0.1-3                         amd64                           Log normalizing library
ii  liblzma5:amd64                                        5.1.1alpha+20120614-2+b3        amd64                           XZ-format compression library
ii  libmount1:amd64                                       2.25.2-6                        amd64                           device mounting library
ii  libmpfr4:amd64                                        3.1.2-2                         amd64                           multiple precision floating-point computation
ii  libncurses5:amd64                                     5.9+20140913-1+b1               amd64                           shared libraries for terminal handling
ii  libncursesw5:amd64                                    5.9+20140913-1+b1               amd64                           shared libraries for terminal handling (wide character support)
ii  libnettle4:amd64                                      2.7.1-5+deb8u1                  amd64                           low level cryptographic library (symmetric and one-way cryptos)
ii  libnfnetlink0:amd64                                   1.0.1-3                         amd64                           Netfilter netlink library
ii  libnfsidmap2:amd64                                    0.25-5                          amd64                           NFS idmapping library
ii  libnih-dbus1                                          1.0.3-4.3                       amd64                           NIH D-Bus Bindings Library
ii  libnih1                                               1.0.3-4.3                       amd64                           NIH Utility Library
ii  libnl-3-200:amd64                                     3.2.24-2                        amd64                           library for dealing with netlink sockets
ii  libnl-genl-3-200:amd64                                3.2.24-2                        amd64                           library for dealing with netlink sockets - generic netlink
ii  libnss-myhostname:amd64                               0.3-9                           amd64                           nss module providing fallback resolution for the current hostname
ii  libp11-kit0:amd64                                     0.20.7-1                        amd64                           Library for loading and coordinating access to PKCS#11 modules - runtime
ii  libpam-modules:amd64                                  1.1.8-3.1+deb8u1+b1             amd64                           Pluggable Authentication Modules for PAM
ii  libpam-modules-bin                                    1.1.8-3.1+deb8u1+b1             amd64                           Pluggable Authentication Modules for PAM - helper binaries
ii  libpam-runtime                                        1.1.8-3.1+deb8u1                all                             Runtime support for the PAM library
ii  libpam0g:amd64                                        1.1.8-3.1+deb8u1+b1             amd64                           Pluggable Authentication Modules library
ii  libpcre3:amd64                                        2:8.35-3.3+deb8u4               amd64                           Perl 5 Compatible Regular Expression Library - runtime files
ii  libperl4-corelibs-perl                                0.003-1                         all                             libraries historically supplied with Perl 4
ii  libpipeline1:amd64                                    1.4.0-1                         amd64                           pipeline manipulation library
ii  libprocps3:amd64                                      2:3.3.9-9                       amd64                           library for accessing process information from /proc
ii  libpsl0:amd64                                         0.5.1-1                         amd64                           Library for Public Suffix List (shared libraries)
ii  libpython-stdlib:amd64                                2.7.9-1                         amd64                           interactive high-level object-oriented language (default python version)
ii  libpython2.7-minimal:amd64                            2.7.9-2                         amd64                           Minimal subset of the Python language (version 2.7)
ii  libpython2.7-stdlib:amd64                             2.7.9-2                         amd64                           Interactive high-level object-oriented language (standard library, version 2.7)
ii  libpython3.4-minimal:amd64                            3.4.2-1                         amd64                           Minimal subset of the Python language (version 3.4)
ii  libreadline6:amd64                                    6.3-8+b3                        amd64                           GNU readline and history libraries, run-time libraries
ii  libsasl2-2:amd64                                      2.1.26.dfsg1-13+deb8u1          amd64                           Cyrus SASL - authentication abstraction library
ii  libsasl2-modules-db:amd64                             2.1.26.dfsg1-13+deb8u1          amd64                           Cyrus SASL - pluggable authentication modules (DB)
ii  libselinux1:amd64                                     2.3-2                           amd64                           SELinux runtime shared libraries
ii  libsemanage-common                                    2.3-1                           all                             Common files for SELinux policy management libraries
ii  libsemanage1:amd64                                    2.3-1+b1                        amd64                           SELinux policy management library
ii  libsepol1:amd64                                       2.3-2                           amd64                           SELinux library for manipulating binary security policies
ii  libsigsegv2:amd64                                     2.10-4+b1                       amd64                           Library for handling page faults in a portable way
ii  libslang2:amd64                                       2.3.0-2                         amd64                           S-Lang programming library - runtime version
ii  libsmartcols1:amd64                                   2.25.2-6                        amd64                           smart column output alignment library
ii  libsqlite3-0:amd64                                    3.8.7.1-1+deb8u1                amd64                           SQLite 3 shared library
ii  libssl1.0.0:amd64                                     1.0.1k-3+deb8u4                 amd64                           Secure Sockets Layer toolkit - shared libraries
ii  libstdc++6:amd64                                      4.9.2-10                        amd64                           GNU Standard C++ Library v3
ii  libsystemd0:amd64                                     215-17+deb8u4                   amd64                           systemd utility library
ii  libtasn1-6:amd64                                      4.2-3+deb8u1                    amd64                           Manage ASN.1 structures (runtime)
ii  libtext-charwidth-perl                                0.04-7+b3                       amd64                           get display widths of characters on the terminal
ii  libtext-iconv-perl                                    1.7-5+b2                        amd64                           converts between character sets in Perl
ii  libtext-wrapi18n-perl                                 0.06-7                          all                             internationalized substitute of Text::Wrap
ii  libtinfo5:amd64                                       5.9+20140913-1+b1               amd64                           shared low-level terminfo library for terminal handling
ii  libtirpc1:amd64                                       0.2.5-1                         amd64                           transport-independent RPC library
ii  libudev1:amd64                                        215-17+deb8u4                   amd64                           libudev shared library
ii  libusb-0.1-4:amd64                                    2:0.1.12-25                     amd64                           userspace USB programming library
ii  libustr-1.0-1:amd64                                   1.0.4-3+b2                      amd64                           Micro string library: shared library
ii  libuuid1:amd64                                        2.25.2-6                        amd64                           Universally Unique ID library
ii  libwrap0:amd64                                        7.6.q-25                        amd64                           Wietse Venema's TCP wrappers library
rc  libxml2:amd64                                         2.9.1+dfsg1-5                   amd64                           GNOME XML library
ii  libxtables10                                          1.4.21-2+b1                     amd64                           netfilter xtables library
ii  locales                                               2.19-18+deb8u4                  all                             GNU C Library: National Language (locale) data [support]
ii  login                                                 1:4.2-3+deb8u1                  amd64                           system login tools
ii  lsb-base                                              4.1+Debian13+nmu1               all                             Linux Standard Base 4.1 init script functionality
ii  lsb-release                                           4.1+Debian13+nmu1               all                             Linux Standard Base version reporting utility
ii  lsof                                                  4.86+dfsg-1                     amd64                           Utility to list open files
ii  lzma                                                  9.22-2                          amd64                           Compression and decompression in the LZMA format - command line utility
ii  makedev                                               2.3.1-93                        all                             creates device files in /dev
ii  man-db                                                2.7.0.2-5                       amd64                           on-line manual pager
ii  mime-support                                          3.58                            all                             MIME files 'mime.types' & 'mailcap', and support programs
ii  mktemp                                                8.23-4                          all                             coreutils mktemp transitional package
ii  module-init-tools                                     18-3                            all                             transitional dummy package (module-init-tools to kmod)
ii  mount                                                 2.25.2-6                        amd64                           Tools for mounting and manipulating filesystems
ii  multiarch-support                                     2.19-18+deb8u4                  amd64                           Transitional package to ensure multiarch compatibility
ii  ncurses-base                                          5.9+20140913-1                  all                             basic terminal type definitions
ii  ncurses-bin                                           5.9+20140913-1+b1               amd64                           terminal-related programs and man pages
ii  net-tools                                             1.60-26+b1                      amd64                           NET-3 networking toolkit
ii  netbase                                               5.3                             all                             Basic TCP/IP networking system
ii  nfs-common                                            1:1.2.8-9                       amd64                           NFS support files common to client and server
ii  openssh-blacklist                                     0.4.1+nmu1                      all                             list of default blacklisted OpenSSH RSA and DSA keys
ii  openssh-client                                        1:6.7p1-5+deb8u2                amd64                           secure shell (SSH) client, for secure access to remote machines
ii  openssh-server                                        1:6.7p1-5+deb8u2                amd64                           secure shell (SSH) server, for secure access from remote machines
ii  openssh-sftp-server                                   1:6.7p1-5+deb8u2                amd64                           secure shell (SSH) sftp server module, for SFTP access from remote machines
ii  passwd                                                1:4.2-3+deb8u1                  amd64                           change and administer password and group data
ii  perl                                                  5.20.2-3+deb8u4                 amd64                           Larry Wall's Practical Extraction and Report Language
ii  perl-base                                             5.20.2-3+deb8u4                 amd64                           minimal Perl system
ii  perl-modules                                          5.20.2-3+deb8u4                 all                             Core Perl modules
ii  procinfo                                              1:2.0.304-1                     amd64                           reporter for system information from /proc and /sys
ii  procps                                                2:3.3.9-9                       amd64                           /proc file system utilities
ii  psmisc                                                22.21-2                         amd64                           utilities that use the proc file system
ii  python                                                2.7.9-1                         amd64                           interactive high-level object-oriented language (default version)
ii  python-minimal                                        2.7.9-1                         amd64                           minimal subset of the Python language (default version)
ii  python2.7                                             2.7.9-2                         amd64                           Interactive high-level object-oriented language (version 2.7)
ii  python2.7-minimal                                     2.7.9-2                         amd64                           Minimal subset of the Python language (version 2.7)
ii  python3.4-minimal                                     3.4.2-1                         amd64                           Minimal subset of the Python language (version 3.4)
ii  quota                                                 4.01-8                          amd64                           disk quota management tools
ii  readline-common                                       6.3-8                           all                             GNU readline and history libraries, common files
ii  rpcbind                                               0.2.1-6+deb8u1                  amd64                           converts RPC program numbers into universal addresses
ii  rsyslog                                               8.4.2-1+deb8u2                  amd64                           reliable system and kernel logging daemon
ii  sed                                                   4.2.2-4+b1                      amd64                           The GNU sed stream editor
ii  sensible-utils                                        0.0.9                           all                             Utilities for sensible alternative selection
rc  sgml-base                                             1.26+nmu4                       all                             SGML infrastructure and SGML catalog file support
ii  startpar                                              0.59-3                          amd64                           run processes in parallel and multiplex their output
ii  strace                                                4.9-2                           amd64                           System call tracer
ii  systemd                                               215-17+deb8u4                   amd64                           system and service manager
ii  systemd-sysv                                          215-17+deb8u4                   amd64                           system and service manager - SysV links
ii  sysv-rc                                               2.88dsf-59                      all                             System-V-like runlevel change mechanism
ii  sysvinit-utils                                        2.88dsf-59                      amd64                           System-V-like utilities
ii  tar                                                   1.27.1-2+b1                     amd64                           GNU version of the tar archiving utility
ii  tzdata                                                2016c-0+deb8u1                  all                             time zone and daylight-saving time data
ii  ucf                                                   3.0030                          all                             Update Configuration File(s): preserve user changes to config files
ii  udev                                                  215-17+deb8u4                   amd64                           /dev/ and hotplug management daemon
ii  util-linux                                            2.25.2-6                        amd64                           Miscellaneous system utilities
ii  vim                                                   2:7.4.488-7                     amd64                           Vi IMproved - enhanced vi editor
ii  vim-common                                            2:7.4.488-7                     amd64                           Vi IMproved - Common files
ii  vim-runtime                                           2:7.4.488-7                     all                             Vi IMproved - Runtime files
ii  wget                                                  1.16-1                          amd64                           retrieves files from the web
rc  xml-core                                              0.13+nmu2                       all                             XML infrastructure and XML catalog file support
ii  xz-utils                                              5.1.1alpha+20120614-2+b3        amd64                           XZ-format compression utilities
ii  zlib1g:amd64                                          1:1.2.8.dfsg-2+b1               amd64                           compression library - runtime
```
