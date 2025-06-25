FROM ubuntu:24.04

WORKDIR /workdir

# Install system dependencies for tadashi
RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    build-essential \
    autoconf \
    pkg-config \
    libtool \
    libc++-dev \
    libyaml-dev \
    libntl-dev \
    libgmp-dev \
    llvm clang \
    llvm-dev \
    libclang-dev \
    swig \
    openmpi-bin \
    openmpi-common \
    libopenmpi-dev \
    && rm -rf /var/lib/apt/lists/*

# Install tadashi from GitHub
RUN pip3 install --break-system-packages git+https://github.com/vatai/tadashi.git
RUN pip3 install --break-system-packages colorama