Ubuntu Debian 9 Zeroc Ice Python 3 Builder
==========================================

[![Actions Status](https://github.com/ome/zeroc-ice-py-debian9/workflows/Build/badge.svg)](https://github.com/ome/zeroc-ice-py-debian9/actions)

Builds Zeroc Ice wheel for Debian 9.

This can be used to create installable binary packages as an alternative to compiling from source using pip.

    docker build -t builder .
    docker run --rm -v $PWD/dist:/dist builder

To build a different version of IcePy:

    docker run --rm -v $PWD/dist:/dist builder VERSION

Packages will be copied to `$PWD/dist`.