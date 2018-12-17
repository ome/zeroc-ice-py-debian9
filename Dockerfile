FROM debian:stretch
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

RUN apt-get update && \
    apt-get install -y -q\
        build-essential \
        python-dev \
        libssl-dev \
        libbz2-dev \
        libmcpp-dev \
        libdb++-dev \
        libdb-dev \
        libdb-java \
        python-pip

RUN apt-get update && \
    apt-get install -y -q \
    zeroc-ice-all-runtime \
    zeroc-ice-all-dev

RUN pip install wheel
RUN mkdir /dist
ADD build.sh /
CMD ["/build.sh"]
