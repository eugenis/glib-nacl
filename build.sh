#!/bin/bash
ROOT=${NACL_TOOLCHAIN_ROOT:-$HOME/root/nacl-sdk}

cp nacl.cache nacl.cache.tmp
PATH=$ROOT/bin:$PATH CC=nacl64-gcc AR=nacl64-ar RANLIB=nacl64-ranlib PKG_CONFIG_LIBDIR=$ROOT/nacl64/usr/lib/pkgconfig \
  ./configure --host=nacl64 --prefix=$ROOT/nacl64/usr --cache-file=nacl.cache.tmp
PATH=$ROOT/bin:$PATH make
PATH=$ROOT/bin:$PATH make install

