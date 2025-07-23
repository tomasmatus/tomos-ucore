#!/bin/bash

set -ouex pipefail

# Install packages based on image variant
case "${BASE_IMAGE}" in
    "*/bazzite*")
        /ctx/desktop-packages.sh
    ;;

    "*/ucore*")
        /ctx/server-packages.sh
    ;;
esac


#### Example for enabling a System Unit File
# systemctl enable podman.socket

/ctx/finish.sh
