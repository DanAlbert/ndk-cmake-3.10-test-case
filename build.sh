#!/bin/bash
set -e

rm -rf build
mkdir build
cd build
~/src/CMake/bin/cmake \
  -G Ninja \
  -DCMAKE_SYSTEM_NAME=Android \
  -DCMAKE_SYSTEM_VERSION=14 \
  -DCMAKE_ANDROID_ARCH_ABI=armeabi-v7a \
  -DCMAKE_ANDROID_NDK=/work/src/android-ndk-r16b \
  -DCMAKE_ANDROID_NDK_TOOLCHAIN_VERSION=clang \
  -DCMAKE_ANDROID_STL_TYPE=c++_shared \
  ..
ninja
