# docker-tcconfig
Docker image for [tcconfig]( https://github.com/thombashi/tcconfig )


# Usage
```
docker pull thombashi/tcconfig

docker run -d --cap-add NET_ADMIN -t thombashi/tcconfig [tcset options]
```


# Built-in Packages
- `iperf`
- `iproute2`
- `iputils-ping`
- [tcconfig]( https://github.com/thombashi/tcconfig )


# Reference
- [tcconfig documentation]( https://github.com/thombashi/tcconfig )
- [Dockerfile]( https://github.com/thombashi/docker-tcconfig/blob/master/Dockerfile )
