#!/bin/bash

set -eoux pipefail

echo "::group::Installing Kernel Dump Packages"
trap 'echo "::endgroup::"' EXIT

# Install Kernel Dump Packages
dnf5 install -y \
    crash \
    kdump-utils \
    kexec-tools \
    makedumpfile
