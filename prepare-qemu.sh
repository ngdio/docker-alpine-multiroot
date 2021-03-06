#!/bin/bash

# Building armhf and aarch64 images from amd64 requires QEMU.
# It must be downloaded in advance and then be added to the
# respective Docker containers before anything can be executed.

QEMU_VERSION=2.12.0

for arch in arm aarch64 ppc64le s390x; do
    wget https://github.com/multiarch/qemu-user-static/releases/download/v$QEMU_VERSION/x86_64_qemu-$arch-static.tar.gz \
        -O qemu-$arch.tar.gz
done
