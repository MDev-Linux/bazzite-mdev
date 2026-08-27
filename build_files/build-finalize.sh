#!/bin/bash

## TODO
dnf5 config-manager setopt keepcache=0

## Clean /var directory while preserving essential files
find /var/* -maxdepth 0 -type d \! -name cache -exec rm -fr {} \;

## Clean extra lock files
rm -rf \
    /etc/.pwd.lock \
    /etc/passwd- \
    /etc/group- \
    /etc/shadow- \
    /etc/gshadow- \
    /etc/subuid- \
    /etc/subgid-
