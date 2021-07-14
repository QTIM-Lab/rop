FROM pytorch/1.7.1-cuda11.0-cudnn8-runtime

# switch default shell to bash
SHELL ["bin/bash", "-c"]

COPY docker/bashrc /home/.bashrc
COPY docker/vimrc /home/.vimrc
COPY docker/requirements.txt /home/requirements.txt


RUN apt update --fix-missing && apt install -y \
    ca-certificates \
    cifs-utils \
    curl \
    fish \
    gcc \
    git \
    grep \
    htop \
    man \
    npm \
    openssl \
    sed \
    shellcheck \
    tar \
    tmux \
    unzip \
    vim \
    wget \
    && apt clean

# Better man pages https://github.com/tldr-pages/tldr
RUN npm install -g tldr
