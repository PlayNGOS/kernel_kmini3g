#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/armeb-linux-gnueabihf-linaro_5.3.1-2016.05/bin/armeb-linux-gnueabihf-
mkdir output

export VARIANT_DEFCONFIG=kmini_defconfig
make -C $(pwd) O=output  kmini_defconfig
make -j64 -C $(pwd) O=output
