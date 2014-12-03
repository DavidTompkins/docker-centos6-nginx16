# docker-centos6-nginx16

Docker container for nginx 1.6.x with updates running on docker-centos6-base.

## Dependencies

Based on docker-centos6-base: [![https://github.com/DavidTompkins/docker-centos6-base](https://github.com/DavidTompkins/docker-centos6-base)](https://github.com/DavidTompkins/docker-centos6-base)

## Build

Run "build.sh". Image is tagged as "centos6-nginx16".

## Deploy

Run "start.sh". Container is tagged as "centos-nginx16".

## Issues

Pay attention to VirtualBox TCP port forwarding if you are running this container on a Mac. Otherwise, port forwarding will be broken for no apparent reason.

See this issue for more information: [![https://github.com/docker/docker/issues/4007](https://github.com/docker/docker/issues/4007)](https://github.com/docker/docker/issues/4007)

Sample commands to map TCP ports 80 and 443 from the container to localhost 8080 and 8443:
```
VBoxManage controlvm boot2docker-vm natpf1 "nginx,tcp,127.0.0.1,8080,,80"
VBoxManage controlvm boot2docker-vm natpf1 "nginxssl,tcp,127.0.0.1,8443,,443"
```

## License

Licensed under the Apache Software License 2.0. See [![LICENSE](LICENSE)](LICENSE) file.
