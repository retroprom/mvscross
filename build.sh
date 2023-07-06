#!/bin/bash

set -e

# Build rdrprep
pushd rdrprep
  make clean
  make all
  make install
popd

# Build JCC
pushd jcc
  make clean
  make all
  make install
popd

# Build MVSGCC cross compilers
pushd mvsgcc
  make clean
  make all-cross
  make install-cross
popd

# Build MVSCLIB runtime library
pushd mvsclib
  #make clean
  #make all-cross
  #make install-cross
popd

# Build MVSGCC target compilers
pushd mvsgcc
  make all-target
  make install-target
popd

