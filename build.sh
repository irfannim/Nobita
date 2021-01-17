#!/bin/bash

export KERNELNAME=Nobita

export LOCALVERSION=X-r2.5

export KBUILD_BUILD_USER=irfannim

export KBUILD_BUILD_HOST=fanproject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Start building ${KERNELNAME} ${LOCALVERSION} for ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam
	
	build ${i} -newcam

done

END=$(date +"%s")
 
DIFF=$(( END - START ))
