# zerotier-moon

## Quickstart

### Start a container

```sh
docker run --name zerotier-moon -d --restart always -p 9993:9993/udp -v ~/zerotier-one:/var/lib/zerotier-one zfxmnb/zerotier-moon -4 0.0.0.0
```

Replace `0.0.0.0` with your moon's IPv4 address

### Show ZeroTier moon id

```sh
docker logs zerotier-moon
```

### Find ZeroTier *.moon

```sh
docker cp zerotier-moon:/var/lib/zerotier-one/moons.d ~/ 
ls ~/moons.d
```