FROM ubuntu:18.10

WORKDIR /root
ENV PATH="/opt/gradle/gradle-5.3.1/bin:/root/go/bin:${PATH}"
ENV TERM=xterm
ENV GOPATH=/root/go

RUN apt-get update -y && \
    apt install -y dirmngr wget curl apt-utils unzip && \
    curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get install -y nodejs && \
    apt-get update -y && \
    apt-get install -y openjdk-8-jdk && \
    apt-get update -y && \
    apt-get install -y git && \
    apt-get install -y golang-go && \
    mkdir -p /root/git

# GRADLE
RUN wget https://services.gradle.org/distributions/gradle-5.3.1-bin.zip -P /tmp && \
    unzip -d /opt/gradle /tmp/gradle-*.zip

RUN mkdir -p /root/go/bin && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
