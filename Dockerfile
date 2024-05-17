ARG ALPINE_VERSION=latest

FROM alpine:${ALPINE_VERSION}

ARG ZT_VERSION=1.12.2

LABEL maintainer="zfxmnb <fanx1949@gmail.com>"

VOLUME [ "/var/lib/zerotier-one/moons.d" ]

RUN apk add --no-cache zerotier-one=${ZT_VERSION}

COPY startup.sh /startup.sh

EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
