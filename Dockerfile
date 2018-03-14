FROM hub-dev.eventops.io/base/alpine-3.2

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    git \
    openssh-client && \
    pip install virtualenv && \
    pip install ansible && \
    rm -rf /var/cache/apk/* && \
    mkdir /etc/ansible

ENTRYPOINT [ "/usr/bin/ansible-pull" ]