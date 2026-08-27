#!/bin/bash

## Install Kernel Dump Packages
dnf5 install -y \
    crash \
    kdump-utils \
    kexec-tools \
    makedumpfile
