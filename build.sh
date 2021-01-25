#!/bin/bash

export KERNELNAME=Nobita

export LOCALVERSION=

export KBUILD_BUILD_USER=irfannim

export KBUILD_BUILD_HOST=fanproject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "Build Di Mulai for ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam

done

END=$(date +"%s")
 
DIFF=$(( END - START ))