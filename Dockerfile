FROM alpine:3.6

ARG ansible_version=2.5

RUN apk --no-cache add py-pip --virtual build-dependencies libffi-dev openssl-dev python-dev build-base && \
    pip install boto3 cffi && \
    pip install ansible==$ansible_version 

WORKDIR /
