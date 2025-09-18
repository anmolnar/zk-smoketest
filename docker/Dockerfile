FROM maven:3.8.4-jdk-11

RUN apt-get update
RUN apt-get install -y \
   g++ \
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
   ant

RUN apt-get install -y wget unzip gcc vim
RUN apt-get install -y python3-pip python-is-python3

RUN wget https://github.com/anmolnar/zk-smoketest/archive/master.zip -O zk-smoketest.zip; \
    unzip zk-smoketest.zip; \
    rm zk-smoketest.zip

EXPOSE 2181

