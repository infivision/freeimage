#!/bin/bash

mkdir -p build_release/
cd build_release
cmake -DCMAKE_BUILD_TYPE=release ../
make
cd ..

mkdir -p build_debug/
cd build_debug
cmake -DCMAKE_BUILD_TYPE=debug ../
make
cd ..

cp -v ./build_release/lib/*.a ../infistd/lib/linux/x86/bin
cp -v ./build_debug/lib/*.a ../infistd/lib/linux/x86/debug