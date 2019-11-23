FROM debian:stretch
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

RUN apt-get update && \
    apt-get install -y -q\
        build-essential \
        libssl-dev \
        libbz2-dev \
        libmcpp-dev \
        libdb++-dev \
        libdb-dev \
        libdb-java

RUN apt-get update && \
    apt-get install -y -q \
    zeroc-ice-all-runtime \
    zeroc-ice-all-dev
# install python 3.6
RUN apt-get install -y make build-essential libssl-dev zlib1g-dev
RUN  apt-get install -y libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
RUN apt-get install -y libncurses5-dev  libncursesw5-dev xz-utils tk-dev
RUN wget -q https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz
RUN tar xvf Python-3.6.4.tgz
RUN cd Python-3.6.4 && ./configure --enable-optimizations && make -j8 && make altinstall
RUN pip3.6 install wheel
RUN mkdir /dist
ADD build.sh /
CMD ["/build.sh"]
