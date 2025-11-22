FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

RUN apt update && apt upgrade -y && apt install -y build-essential

COPY ./pico-sdk /pico-sdk