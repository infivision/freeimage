#!/bin/bash

mkdir -p build/
cd build/
cmake ..
make
cd ..

cp build/lib/libgtest.a ../infistd/lib/linux/x86
cp -v ./build/lib/*.a ../infistd/lib/linux/x86/