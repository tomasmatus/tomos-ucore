#!/bin/bash

set -ouex pipefail

INSTALLED_PACKAGES=(
    ansible
    btop
    neovim
)

dnf5 install -y "${INSTALLED_PACKAGES[@]}"
