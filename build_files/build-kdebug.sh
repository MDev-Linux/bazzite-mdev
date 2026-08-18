#!/bin/bash

set -eoux pipefail

echo "::group::Installing Kernel Debug Packages"
trap 'echo "::endgroup::"' EXIT

# Install Kernel Debug Packages
dnf5 debuginfo-install -y \
    kernel
