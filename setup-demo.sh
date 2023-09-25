#!/usr/bin/env bash

# download a posix compliant rootfs directory from alpine source code
wget https://dl-cdn.alpinelinux.org/alpine/v3.13/releases/x86_64/alpine-minirootfs-3.13.1-x86_64.tar.gz

# create a directory which will become your new root
mkdir fakeroot

# untar into new dir
tar -C fakeroot -xf alpine-minirootfs-*.tar.gz

# delete the tar file
rm alpine-minirootfs-*.tar.gz
