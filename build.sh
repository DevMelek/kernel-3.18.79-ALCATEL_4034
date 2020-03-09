#!/bin/bash
export KBUILD_BUILD_USER=melek
export KBUILD_BUILD_HOST=TRY
export CROSS_COMPILE=${PWD}/linaro_6.3/bin/arm-linux-gnueabihf
export USE_CCACHE=1
export ARCH=arm ARCH_MTK_PLATFORM=mt6580
export TARGET=out
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE w370_defconfig
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE -j4

