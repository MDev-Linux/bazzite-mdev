#!/bin/bash

set -eoux pipefail

echo "::group::Executing Cleanup"
trap 'echo "::endgroup::"' EXIT

# Clean /var directory while preserving essential files
find /var/* -maxdepth 0 -type d \! -name cache -exec rm -fr {} \;

# Clean extra lock files
rm -rf \
    /etc/.pwd.lock \
    /etc/passwd- \
    /etc/group- \
    /etc/shadow- \
    /etc/gshadow- \
    /etc/subuid- \
    /etc/subgid-
