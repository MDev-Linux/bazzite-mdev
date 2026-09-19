#!/bin/bash

### AI Software Repo's

## Install Antigravity
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/antigravity.repo
dnf install -y --enable-repo="antigravity" antigravity

## Install ChatGPT
cp /ctx/repo_files/etc/pki/rpm-gpg/RPM-GPG-KEY-chatgpt /etc/pki/rpm-gpg/RPM-GPG-KEY-chatgpt
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/chatgpt.repo
dnf5 install -y --enable-repo="openai-chatgpt" chatgpt

## Install Claude Code
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/claude-code.repo
dnf install -y --enable-repo="claude-code" claude-code

## Install Ollama
dnf5 install -y ollama

### Backup Software Repo's

## Install Kopia
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/kopia.repo
dnf5 install -y --enable-repo="kopia" kopia-ui
mv /opt/KopiaUI /usr/lib/opt/KopiaUI

### Developer Software Repo's

## Install VSCode
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/vscode.repo
dnf5 install -y --enable-repo="vscode" code

### System Service Repo's

## Install Cooler Control & LiquidCTL
dnf5 install -y  --enable-repo="terra" coolercontrol liquidctl

## Install OpenRazer Daemon
dnf5 config-manager addrepo --from-repofile=/ctx/repo_files/etc/yum.repos.d/hardware-razer.repo
dnf5 install -y --enable-repo="hardware_razer" openrazer-daemon || echo "::warning::openrazer-daemon Install Failed, Skipping..."
