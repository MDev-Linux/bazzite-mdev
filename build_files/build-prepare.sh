#!/bin/bash

## /opt directory fix
mkdir -p /var/opt

## Copy system files to root
cp  -r \
    /ctx/system_files/desktop/shared/* \
    /ctx/system_files/desktop/silverblue/* \
    /

## TODO
# echo "import \"/usr/share/mdev-os/custom.just\"" >>/usr/share/ublue-os/justfile

## TODO
dnf5 config-manager setopt keepcache=1
