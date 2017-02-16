# Docker usage

## List all the images

```shell
docker images
```

## List all the containers

```shell
# Run as a normal user
docker ps -a
```

## Remove a local image

```shell
# Run as a normal user
docker rmi -f <image-id-or-name>
```

## Remove all containers and images

```shell
# Run as a normal user
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
```

## Build an image

```shell
docker build --tag="<image-name>" <image-root>
```

## Tag an image

1. Get the image ID with `docker images`

2. Run:

  ```shell
  docker tag <image-id> <dockerhub-namespace>/<repository-name>:<tag>
  ```
  
  Example:
  
  ```shell
  docker tag 9bddd290dd4d demurgos/docker-whale:latest
  ```

## Log in

```shell
docker login
```

Example:

```terminal
$ docker login
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: demurgos
Password: 
Login Succeeded
```

## Push an image

```shell
docker push <dockerhub-namespace>/<repostory-name>
```

Example
```shell
docker push demurgos/docker-whale
```
 
