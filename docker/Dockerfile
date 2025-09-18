FROM debian:11

RUN apt update
RUN apt install -y build-essential
RUN apt install -y \
   cmake \
   autoconf \
   pkg-config \
   libcppunit-dev \
   libtool \
   openssl \
   libssl-dev \
   libsasl2-modules-gssapi-mit \
   libsasl2-modules \
   libsasl2-dev \
   wget \
   unzip \
   vim
RUN apt install -y maven ant
RUN apt install -y python3-pip python-is-python3

RUN wget https://github.com/anmolnar/zk-smoketest/archive/master.zip -O zk-smoketest.zip; \
    unzip zk-smoketest.zip; \
    rm zk-smoketest.zip

EXPOSE 2181

ENTRYPOINT [ "/bin/bash" ]

