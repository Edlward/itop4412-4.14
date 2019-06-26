#!/bin/bash
sudo apt-get install binfmt-support qemu qemu-user-static debootstrap
sudo debootstrap --arch=armhf --foreign stretch fs_debian_stretch http://mirrors.tuna.tsinghua.edu.cn/debian
sudo cp /usr/bin/qemu-arm-static fs_debian_stretch/usr/bin
sudo DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true LC_ALL=C LANGUAGE=C LANG=C chroot fs_debian_stretch debootstrap/debootstrap --second-stage
