FROM ubuntu:latest
ARG USER_ID=1000
ARG GROUP_ID=1000

RUN apt update && apt install -y --no-install-recommends adduser

RUN groupadd --gid $GROUP_ID appuser
RUN useradd --uid $USER_ID --gid $GROUP_ID --create-home --shell /bin/bash appuser
RUN usermod -aG sudo appuser

# Tenta corrigir as permissões dos diretórios do apt
RUN chown -R root:root /var/lib/apt /var/cache/apt /etc/apt
RUN chmod 755 /var/lib/apt /var/cache/apt /etc/apt
RUN chmod 644 /etc/apt/sources.list /etc/apt/sources.list.d/*

USER appuser
WORKDIR /home/appuser

RUN apt update && apt install -y --no-install-recommends nano vim curl wget git bash-completion file