# zerotier-moon

## Quickstart

### Start a container

```
mkdir ~/zerotier-one
docker run --name zerotier-moon -d --restart always -p 9993:9993/udp -v ~/zerotier-one:/var/lib/zerotier-one zfxmnb/zerotier-moon -4 127.0.0.1
```

Replace `127.0.0.1` with your moon's IPv4 address

### Show ZeroTier moon id

```
docker logs zerotier-moon
```

### Find ZeroTier *.moon

```
ls ~/zerotier-one/moons.d
```