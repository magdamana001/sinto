FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN docker run -p 6070:80 dorowu/ubuntu-desktop-lxde-vnc
