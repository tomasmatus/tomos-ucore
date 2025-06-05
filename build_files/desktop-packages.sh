#!/bin/bash

set -ouex pipefail

INSTALLED_PACKAGES=(
    ansible
    btop
    gh
    neovim
    zsh
)

dnf5 install -y "${INSTALLED_PACKAGES[@]}"
