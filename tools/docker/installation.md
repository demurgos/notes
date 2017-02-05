# Docker Installation

## Requirements

**TODO**

### Debian-specific

- curl, verified with 7.52.1

```shell
# Run as root
apt-get install curl
```

## Installation

### Debian

[Official documentation][docker-install-debian]

1. Support HTTPS repositories

  ```shell
  # Run as root
  apt-get install apt-transport-https ca-certificates software-properties-common
  ```

2. Add Docker's key

  ```shell
  # Run as root
  curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -
  ```
  
  Check that the key ID is `58118E89F3A912897C070ADBF76221572C52609D`.
  The following command should mention Docker.
  
  ```shell
  # Run as a normal user
  apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
  ```
  
  Example:
  ```shell
  # curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -
  OK
  $ apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
  pub   rsa4096 2015-07-14 [SCEA]
        5811 8E89 F3A9 1289 7C07  0ADB F762 2157 2C52 609D                         
  uid           [ unknown] Docker Release Tool (releasedocker) <docker@docker.com>
  ```

3. Add the Docker repository to your sources

  ```shell
  # Run as root
  echo "deb https://apt.dockerproject.org/repo/ debian-stretch main" > /etc/apt/sources.list.d/docker.list
  ```

4. Update the sources and install

  ```shell
  # Run as root
  apt-get update
  apt-get install -y docker-engine
  ```

5. Check the installation

  ```shell
  # Run as root
  docker version
  docker run hello-world
  ```
  
  Example:
  ```terminal
  # docker version
  Client:
   Version:      1.13.0
   API version:  1.25
   Go version:   go1.7.3
   Git commit:   49bf474f9
   Built:        Tue Jan 17 09:52:33 2017
   OS/Arch:      linux/amd64
  
  Server:
   Version:      1.13.0
   API version:  1.25 (minimum version 1.12)
   Go version:   go1.7.3
   Git commit:   49bf474f9
   Built:        Tue Jan 17 09:52:33 2017
   OS/Arch:      linux/amd64
   Experimental: false
  # docker run hello-world
  Unable to find image 'hello-world:latest' locally
  latest: Pulling from library/hello-world
  78445dd45222: Pull complete 
  Digest: sha256:c5515758d4c5e1e838e9cd307f6c6a0d620b5e07e6f927b07d05f6d12a1ac8d7
  Status: Downloaded newer image for hello-world:latest
  
  Hello from Docker!
  This message shows that your installation appears to be working correctly.
  
  To generate this message, Docker took the following steps:
   1. The Docker client contacted the Docker daemon.
   2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
   3. The Docker daemon created a new container from that image which runs the
      executable that produces the output you are currently reading.
   4. The Docker daemon streamed that output to the Docker client, which sent it
      to your terminal.
  
  To try something more ambitious, you can run an Ubuntu container with:
   $ docker run -it ubuntu bash
  
  Share images, automate workflows, and more with a free Docker ID:
   https://cloud.docker.com/
  
  For more examples and ideas, visit:
   https://docs.docker.com/engine/userguide/

  ```

6. Start docker when the system boots

  ```shell
  # Run as root
  systemctl enable docker
  ```

7. Configure permissions.

  To allow the use of the `docker` command, you need to [add users to the `docker`
  group][notes-users-add-to-group].

  ```shell
  # Run as root
  usermod --append --groups docker <username>
  ```
  
  **You need to log out and log in to apply the changes.**

  Check:
  
  ```shell
  # Run as a normal user
  docker version
  docker run hello-world
  ```


[docker-install-debian]: https://docs.docker.com/engine/installation/linux/debian/
[notes-users-add-to-group]: ../../linux/users.md#add-user-to-group
