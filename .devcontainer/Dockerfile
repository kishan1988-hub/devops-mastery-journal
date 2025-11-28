# See https://aka.ms/vscode-remote/devcontainer.json for format details
FROM mcr.microsoft.com/devcontainers/base:ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=${DEBIAN_FRONTEND}

RUN apt-get update \
 && apt-get -y install --no-install-recommends \
    git \
    zsh \
    pandoc \
    python3 \
    python3-pip \
    python3-venv \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

# Ensure zsh is the default shell for the 'vscode' user (base image includes this user)
SHELL ["/bin/bash", "-lc"]
RUN chsh -s /bin/zsh vscode || true
