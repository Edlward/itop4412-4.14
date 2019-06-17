#!/bin/bash
sudo rm fs_debian_stretch/dev/*
sudo make_ext4fs -s -l 996147200 -a root -L linux system.img fs_debian_stretch
