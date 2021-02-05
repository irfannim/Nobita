#!/bin/bash

export KERNELNAME=Nobita

export LOCALVERSION=-HMP

export KBUILD_BUILD_USER=irfannim

export KBUILD_BUILD_HOST=#funproject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "Memulai Build Kernel ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} Kernel

done

END=$(date +"%s")
 
DIFF=$(( END - START ))

send_msg "Build Telah Sukses $((DIFF / 60))m $((DIFF % 60))s | Last commit: $(git log --pretty=format:'%h : %s' -5)"
