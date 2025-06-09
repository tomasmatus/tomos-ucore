#!/bin/bash

set -ouex pipefail

INSTALLED_PACKAGES=(
    ansible
    btop
    gh
    neovim
    ripgrep
    zsh
)

dnf5 install -y "${INSTALLED_PACKAGES[@]}"
