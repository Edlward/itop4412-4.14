#!/bin/bash

cd u-boot-2017.11/u-boot
if [ -z $1 ]
then
	echo "error!!,need dev!!!"
else
	./mkuboot.sh $1
fi

cd ../../

cd linux-4.14.2_iTop-4412_scp
if [ -z $1 ]
then
	echo "error!!,need dev!!!"
else
	./burnimage.sh $1
fi
