#!/bin/bash

#export PATH="$PWD/brandy/gcc-linaro/bin":"$PATH"

export PATH=$PATH:/usr/local/angstrom/armv7linaro/bin/
#cross_comp="arm-linux-gnueabihf"

cd linux-3.4

cp .config .config.bak
cp ../build/sun8iw7p1smp_lobo_defconfig ../build/sun8iw7p1smp_lobo_defconfig.old
cp ../build/sun8iw7p1smp_lobo_defconfig .config

# === to edit configuration run: =========================
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig

cp .config ../build/sun8iw7p1smp_lobo_defconfig
# ========================================================

