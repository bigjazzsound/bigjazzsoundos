#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

pkgs=(
  bcc
  bcc-tools
  butane
  fd-find
  fish
  igt-gpu-tools
  intel-gpu-tools
  intel-media-driver
  libva
  libva-utils
  python3
  python3-pip
  python3-lxml
  ripgrep
  selinux-policy
  selinux-policy-targeted
  smartmontools
  unzip
  virtiofsd
)

rpm-ostree install \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-${RELEASE}.noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${RELEASE}.noarch.rpm

rpm-ostree install ${pkgs[*]}
