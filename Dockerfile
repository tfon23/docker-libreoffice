FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      libreoffice \
      git \
      openssh-client \
      python3 \
      python3-pip \
      python3-venv \
      nodejs \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
