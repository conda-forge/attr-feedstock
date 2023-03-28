#!/usr/bin/env bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux
set -ex

./configure --prefix="${PREFIX}" --disable-static
make -j ${CPU_COUNT}
make install
