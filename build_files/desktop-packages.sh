#!/bin/bash

set -ouex pipefail

INSTALLED_PACKAGES=(
    ansible
    btop
    gh
    neovim
    ripgrep
    fd-find
    zsh
)

dnf5 install -y "${INSTALLED_PACKAGES[@]}"
