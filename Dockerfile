FROM ubuntu:18.04

ENV DISPLAY host.docker.internal:0
VOLUME /tmp/.X11-unix:/tmp/.X11-unix

RUN mkdir -p /opt/x11-apps

WORKDIR /opt/x11-apps

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get install build-essential x11-apps -y

CMD ["xeyes"]


