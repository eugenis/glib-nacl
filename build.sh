#!/bin/bash
cp nacl.cache nacl.cache.tmp
PATH=$HOME/root/bin:$PATH CC=nacl64-gcc AR=nacl64-ar RANLIB=nacl64-ranlib PKG_CONFIG_LIBDIR=$HOME/root/nacl64/lib/pkgconfig \
  ./configure --host=nacl64 --prefix=$HOME/root/nacl64 --cache-file=nacl.cache.tmp
PATH=$HOME/root/bin:$PATH make
PATH=$HOME/root/bin:$PATH make install

