FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

COPY ./pico-sdk /pico-sdk

RUN apt update && apt upgrade -y && apt install -y \
    build-essential g++ python3 cmake pkg-config vim \
    gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib


ENV PICO_SDK_PATH=/pico-sdk