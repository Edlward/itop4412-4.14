#!/bin/bash
if [ ! -f out ]
then 
	mkdir out
fi

cd u-boot-2017.11/u-boot/

./build.sh 

cd ../..
cp u-boot-2017.11/u-boot/u-boot-iTOP-4412.bin out/

cd linux-4.14.2_iTop-4412_scp

./build_kernel.sh
cd ../
cp linux-4.14.2_iTop-4412_scp/arch/arm/boot/dts/exynos4412-itop-elite.dtb out/
cp linux-4.14.2_iTop-4412_scp/arch/arm/boot/uImage out/
