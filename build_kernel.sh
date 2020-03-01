#!/bin/bash
mkdir out

BUILD_CROSS_COMPILE=$(pwd)/toolchain/gcc-cfp/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android-
KERNEL_LLVM_BIN=$(pwd)/toolchain/clang/host/linux-x86/clang-4639204-cfp-jopp//bin/clang
CLANG_TRIPLE=aarch64-linux-gnu-

make mrproper

make -j4 -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE CC=$KERNEL_LLVM_BIN CLANG_TRIPLE=$CLANG_TRIPLE exynos9820-beyond2lteks_defconfig

make -j4 -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE CC=$KERNEL_LLVM_BIN CLANG_TRIPLE=$CLANG_TRIPLE
