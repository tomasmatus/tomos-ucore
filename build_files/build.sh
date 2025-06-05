#!/bin/bash

set -ouex pipefail

# Install packages
/ctx/desktop-packages.sh

#### Example for enabling a System Unit File
# systemctl enable podman.socket
