ARG IMAGE_VERSION=stable-slim

FROM debian:${IMAGE_VERSION}

ARG ZT_VERSION=1.12.2

LABEL maintainer="zfxmnb <fanx1949@gmail.com>"

VOLUME "/var/lib/zerotier-one"

RUN apt-get update && apt-get install -y zerotier-one=${ZT_VERSION}

COPY startup.sh /startup.sh

EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
