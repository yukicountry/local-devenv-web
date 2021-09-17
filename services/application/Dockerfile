# デフォルト値3.9
ARG PYTHON_VERSION=3.9

FROM --platform=linux/amd64 python:${PYTHON_VERSION}-slim-buster

SHELL [ "/bin/bash", "-oeux", "pipefail", "-c" ]

ARG USERNAME=developer
ARG USER_UID=1000
ARG PASSWD=password

WORKDIR /application

RUN \
    #
    apt -y update && \
    apt install -y sudo && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    #
    useradd -m -s /bin/bash -u ${USER_UID} ${USERNAME} && \
    gpasswd -a ${USERNAME} sudo && \
    echo "${USERNAME}:${PASSWD}" | chpasswd && \
    echo "${USERNAME} ALL=(ALL) ALL" >> /etc/sudoers && \
    chown -R ${USERNAME}:${USERNAME} /application && \
    #
    pip install uvicorn gunicorn && \
    rm -rf ~/.cache/pip/*

USER ${USERNAME}
