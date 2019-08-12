FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    wget bash bc gcc sed patch patchutils tar bzip2 gzip perl gawk gperf zip unzip diffutils texinfo lzop python python3 \
    g++ xfonts-utils xfonts-utils xfonts-utils xsltproc default-jre-headless \
    libc6-dev libncurses5-dev \
    u-boot-tools \
    xz-utils make file libxml-parser-perl \
    libjson-perl \
    golang-go \
    git openssh-client \
    --no-install-recommends \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
