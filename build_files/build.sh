#!/bin/bash

set -eoux pipefail

echo "::group::Preparing Build"
source /ctx/build_files/build-prepare.sh
echo "::endgroup::"

echo "::group::Installing COPR Packages"
source /ctx/build_files/build-copr.sh
echo "::endgroup::"

echo "::group::Installing Custom Repo Packages"
source /ctx/build_files/build-repofile.sh
echo "::endgroup::"

echo "::group::Installing Developer Packages"
source /ctx/build_files/build-dx.sh
echo "::endgroup::"

echo "::group::Installing Custom Developer Packages"
source /ctx/build_files/build-custom.sh
echo "::endgroup::"

echo "::group::Installing Envision Packages"
source /ctx/build_files/build-envision.sh
echo "::endgroup::"

echo "::group::Installing Kernel Debug Packages"
source /ctx/build_files/build-kernel-debug.sh
echo "::endgroup::"

echo "::group::Installing Kernel Dump Packages"
source /ctx/build_files/build-kernel-dump.sh
echo "::endgroup::"

echo "::group::Installing Gnome Shell Extensions"
source /ctx/build_files/build-gnome-extensions.sh
echo "::endgroup::"

echo "::group::Finalizing Build"
source /ctx/build_files/build-finalize.sh
echo "::endgroup::"
