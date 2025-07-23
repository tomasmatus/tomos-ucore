#!/bin/bash

set -ouex pipefail

echo "Running finish script"

# Clean DNF cache
dnf5 clean all

# Clean temporary files
rm -rf /tmp/*
rm -rf /var/tmp/*

# Finish container image
bootc container lint
ostree container commit
