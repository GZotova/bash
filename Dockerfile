FROM debian:bookworm-slim

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      gcc-arm-linux-gnueabi libc6-dev-armel-cross \
      make \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /src
