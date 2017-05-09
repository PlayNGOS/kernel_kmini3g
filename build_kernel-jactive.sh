#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/armeb-linux-gnueabihf-linaro_5.3.1-2016.05/bin/armeb-linux-gnueabihf-

mkdir output

make -C $(pwd) O=output msm8226-sec_defconfig VARIANT_DEFCONFIG=msm8228-sec_atlantic3geur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
