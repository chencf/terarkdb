#!/bin/bash

BASE=$PWD
OUTPUT=output
mkdir -p $OUTPUT

git submodule update --init --recursive

cd $BASE/$OUTPUT && cmake ../ -DCMAKE_BUILD_TYPE=RelWithDebInfo -DWITH_TESTS=OFF -DWITH_TOOLS=ON
cd $BASE/$OUTPUT && make -j $(nproc) && make install
