FROM debian:buster-slim
RUN apt-get update && apt-get install -y \
    sudo \
    git \
    openssh-client \
    curl \
    wget \
    ca-certificates \
    unzip \
    zip \
    less \
    vim \
    nano \
    build-essential
RUN useradd -ms /bin/bash hocus && \
    usermod -aG sudo hocus && \
    echo 'hocus:pocus' | chpasswd && \
    mkdir -p /home/hocus/code && \
    chown hocus:hocus /home/hocus/code

USER hocus
RUN mkdir -p /home/hocus/.vscode-server/data/Machine/
COPY --chown=hocus:hocus ./misc/vscode-settings.json /home/hocus/.vscode-server/data/Machine/settings.json

COPY --chown=hocus:hocus ./user/build.sh /home/hocus/build.sh
RUN echo "pocus" | sudo -S /home/hocus/build.sh && rm /home/hocus/build.sh

WORKDIR /home/hocus/code
