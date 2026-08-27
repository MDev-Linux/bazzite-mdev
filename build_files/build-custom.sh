#!/bin/bash

## Install Custom Packages
dnf5 install -y \
    alien \
    btrfsmaintenance \
    cmake \
    cockpit \
    cockpit-files \
    cockpit-machines \
    cockpit-ostree \
    cockpit-podman \
    containernetworking-plugins \
    copr-cli \
    duperemove \
    fedpkg \
    gcc \
    gcc-c++ \
    git-lfs \
    mutter-devkit \
    pcp \
    python3-pcp \
    setools \
    udica \
    valkey \
    wireguard-tools \
    xpra
