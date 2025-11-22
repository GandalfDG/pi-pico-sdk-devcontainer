FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

COPY ./pico-sdk /pico-sdk

RUN apt update && apt upgrade -y && apt install -y \
    build-essential g++ python3 cmake pkg-config vim \
    gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib


ENV PICO_SDK_PATH=/pico-sdk
ENV CMAKE_MAKE_PROGRAM=/usr/bin/make
ENV CMAKE_C_COMPILER=/usr/bin/gcc
ENV CMAKE_CXX_COMPILER=/usr/bin/g++
