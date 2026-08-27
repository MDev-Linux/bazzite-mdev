#!/bin/bash

## Install from copr
# dnf5 copr enable -y user/project
# dnf5 copr enable -y mdwagner/mutter
dnf5 copr enable -y ublue-os/bazzite
dnf5 copr enable -y ublue-os/bazzite-multilib

## Remove Bazzite's package version lock
# dnf5 versionlock delete package
# dnf5 swap -y --repo=copr:copr.fedorainfracloud.org:mdwagner:package package package-version.fcXX.x86_64