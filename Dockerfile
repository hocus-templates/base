FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    build-essential \
    ca-certificates \
    curl \
    git \
    less \
    nano \
    openssh-client \
    sudo \
    unzip \
    vim \
    wget \
    zip
RUN useradd -ms /bin/bash hocus && \
    usermod -aG sudo hocus && \
    echo 'hocus:pocus' | chpasswd && \
    mkdir -p /home/hocus/code && \
    chown hocus:hocus /home/hocus/code

USER hocus
RUN mkdir -p /home/hocus/.vscode-server/data/Machine/
WORKDIR /home/hocus/code
