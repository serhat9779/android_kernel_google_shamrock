#!/bin/bash
cat ${pwd}out/arch/arm64/boot/Image.gz ${pwd}out/arch/arm64/boot/dts/MSM8952_Shamrock.dtb > boot.img-zImage
