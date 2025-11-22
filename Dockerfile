FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

COPY ./pico-sdk /pico-sdk

RUN apt update && apt upgrade -y && apt install -y build-essential cmake vim

ENV PICO_SDK_BASE=/pico-sdk