FROM alpine:3.6

ARG ansible_version=2.5

RUN apk --no-cache add py-pip && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools 
RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev build-base && \
    pip install boto3 && \
    pip install cffi && \
    pip install ansible==$ansible_version

WORKDIR /
