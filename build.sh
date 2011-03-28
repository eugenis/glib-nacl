#!/bin/bash
cp nacl.cache nacl.cache.tmp
PATH=$HOME/root/nacl-sdk/bin:$PATH CC=nacl64-gcc AR=nacl64-ar RANLIB=nacl64-ranlib PKG_CONFIG_LIBDIR=$HOME/root/nacl-sdk/nacl64/usr/lib/pkgconfig \
  ./configure --host=nacl64 --prefix=$HOME/root/nacl-sdk/nacl64/usr --cache-file=nacl.cache.tmp
PATH=$HOME/root/nacl-sdk/bin:$PATH make
PATH=$HOME/root/nacl-sdk/bin:$PATH make install

