#!/bin/bash

./configure --prefix=$PREFIX \
            --with-gmp=$PREFIX \
            --enable-static

make -j${CPU_COUNT}
make check || (cat tests/test-suite.log && false)
make install
