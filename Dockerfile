FROM ubuntu:18.04

WORKDIR /root
ENV TERM=xterm

RUN apt-get update -y && \
    apt install -y dirmngr wget curl apt-utils && \
    curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get install -y nodejs && \
    apt-get update -y && \
    apt-get install -y openjdk-8-jdk && \
    apt-get update -y && \
    apt-get install -y git && \
    mkdir -p /root/git
