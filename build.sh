#!/bin/bash
ROOT=${NACL_TOOLCHAIN_ROOT:-$HOME/root/nacl-sdk}

cp nacl.cache nacl.cache.tmp
PATH=$ROOT/bin:$PATH CC=x86_64-nacl-gcc AR=x86_64-nacl-ar RANLIB=x86_64-nacl-ranlib PKG_CONFIG_LIBDIR=$ROOT/x86_64-nacl/usr/lib/pkgconfig \
  ./configure --host=x86_64-nacl --prefix=$ROOT/x86_64-nacl/usr --cache-file=nacl.cache.tmp
PATH=$ROOT/bin:$PATH make -j15
PATH=$ROOT/bin:$PATH make install

