#!/bin/bash
NDK=/home/loli35/android-ndk-r9d
SYSROOT=$NDK/platforms/android-9/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64
 
function build_one
{
  ./configure \
  --prefix=$PREFIX \
  --disable-shared \
  --enable-static \
  --enable-doc \
  --enable-ffserver \
  --disable-cross-compile \
  --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
  --target-os=linux \
  --arch=arm \
  --sysroot=$SYSROOT \
  
  
}
CPU=arm
PREFIX=$(pwd)/android/$CPU
build_one
