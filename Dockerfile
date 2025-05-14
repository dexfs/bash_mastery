FROM ubuntu:latest
RUN apt update && apt install -y --no-install-recommends \
    nano \
    vim \
    curl \
    wget \
    git \
    bash-completion
USER 1000
WORKDIR /home/$USER