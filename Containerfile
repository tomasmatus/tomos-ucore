ARG BASE_IMAGE="ghcr.io/ublue-os/bazzite:stable"
ARG IMAGE_TAG="latest"

# Allow build scripts to be referenced without being copied into the final image
FROM scratch AS ctx
COPY build_files /

# Base Image, bazzite with KDE
FROM ${BASE_IMAGE}:${IMAGE_TAG}

ARG BASE_IMAGE="ghcr.io/ublue-os/bazzite:stable"
ARG IMAGE_TAG="latest"

# MODIFICATIONS
# make modifications desired in your image and install packages by modifying the build.sh script
# the following RUN directive does all the things required to run "build.sh" as recommended.

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    /ctx/build.sh
