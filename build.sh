#!/bin/bash

set -e

pushd jcc
  make clean
  make all
popd

pushd mvsgcc
  make clean
  make all-cross
popd

pushd mvsgcc
  make all-target
popd

