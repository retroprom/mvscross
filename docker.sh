#!/bin/bash

set -e

docker build -f Dockerfile -t retroprom/mvscross:latest "$@" .

