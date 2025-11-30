#!/usr/bin/env bash
set -ex

./configure --prefix="${PREFIX}" --disable-static
make -j ${CPU_COUNT}
make install

if [[ ${PKG_NAME} != attr ]]; then
    rm -f ${PREFIX}/bin/attr
    rm -f ${PREFIX}/bin/getfattr
    rm -f ${PREFIX}/bin/setfattr
fi
