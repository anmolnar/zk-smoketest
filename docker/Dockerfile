FROM debian:13

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y \
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
   less \
   telnet \
   vim
RUN apt-get install -y maven ant default-jdk
RUN apt-get install -y python3-pip python-is-python3 python3-setuptools

RUN wget https://github.com/anmolnar/zk-smoketest/archive/master.zip -O zk-smoketest.zip; \
    unzip zk-smoketest.zip; \
    rm zk-smoketest.zip

ENV JAVA_HOME="/usr/lib/jvm/default-java"

EXPOSE 2181

ENTRYPOINT [ "/bin/bash" ]

