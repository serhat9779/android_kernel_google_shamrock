#!/bin/bash
export CROSS_COMPILE=/home/is/ArrowOS/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64
make O=out clean
make O=out mrproper
make O=out shamrock_defconfig
make O=out -j$(nproc --all)
cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage

