#!/bin/bash

## Install Cooler Control & LiquidCTL
dnf5 install -y  --enable-repo="terra" coolercontrol liquidctl

## Install ChatGPT
cp /ctx/repo_files/etc/pki/rpm-gpg/RPM-GPG-KEY-chatgpt /etc/pki/rpm-gpg/RPM-GPG-KEY-chatgpt
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/chatgpt.repo
dnf5 install -y --enable-repo="openai-chatgpt" chatgpt

## Install Kopia
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/kopia.repo
dnf5 install -y --enable-repo="kopia" kopia-ui
mv /opt/KopiaUI /usr/lib/opt/KopiaUI

## Install OpenRazer Daemon
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/hardware-razer.repo
dnf5 install -y --enable-repo="hardware_razer" openrazer-daemon || echo "::warning::openrazer-daemon Install Failed, Skipping..."

## Install VSCode
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/vscode.repo
dnf5 install -y --enable-repo="vscode" code
