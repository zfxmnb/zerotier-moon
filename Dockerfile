FROM debian:bookworm
# FROM ubuntu:20.04

LABEL maintainer="zfxmnb <fanx1949@gmail.com>"

RUN apt-get update && apt-get install -y curl procps sudo

RUN curl -s https://install.zerotier.com | sudo bash

COPY startup.sh /startup.sh

EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
