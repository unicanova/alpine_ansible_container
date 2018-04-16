FROM ubuntu:16.04

RUN apt update && \
    apt install -y git python-pip && \
    pip install ansible boto3
