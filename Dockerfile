ARG IMAGE_VERSION=stable-slim

FROM debian:${IMAGE_VERSION}

LABEL maintainer="zfxmnb <fanx1949@gmail.com>"

VOLUME "/var/lib/zerotier-one"

RUN apt-get update && apt-get install -y curl && curl -s https://install.zerotier.com | bash

COPY startup.sh /startup.sh

RUN chmod 777 /startup.sh

EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
