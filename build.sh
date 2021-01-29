#!/bin/bash

export KERNELNAME=Nobita

export LOCALVERSION=-EAS

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

	build ${i} -oldcam

done

END=$(date +"%s")
 
DIFF=$(( END - START ))
