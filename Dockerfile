
ARG BASE="debian:stable"

FROM ${BASE}

ENV MVSCROSS_PKG="build-essential gcc gcc-multilib libc6-dev make"

RUN apt update \
 && DEBIAN_FRONTEND=noninteractive apt install --yes --no-install-recommends ${MVSCROSS_PKG} \
 && apt clean && rm -rf /var/lib/apt/lists/*

COPY ./ /build/

WORKDIR /build

RUN ./build.sh

