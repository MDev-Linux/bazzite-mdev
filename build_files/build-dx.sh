#!/bin/bash

## Install Bazzite DX Packages
dnf5 install -y \
    android-tools \
    bcc \
    bpftop \
    bpftrace \
    flatpak-builder \
    podman-compose \
    podman-machine \
    podman-tui \
    sysprof \
    tiptop \
    usbmuxd \
    waypipe \
    zsh

## Install Bazzite DX Virt Packages
dnf5 install -y \
    guestfs-tools \
    libvirt \
    qemu \
    qemu-kvm \
    virt-manager
