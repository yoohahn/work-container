FROM ubuntu:19.04 AS build

WORKDIR /root
# ENV GOPATH=/root/go
ENV TERM=xterm

RUN apt-get update -y
RUN apt install -y dirmngr
RUN apt install -y wget
RUN apt install -y curl
RUN apt install -y apt-utils
RUN apt install -y unzip
RUN apt install -y nano
RUN apt install -y git
RUN apt install -y iptables
RUN apt install -y apt-transport-https
RUN apt install -y ca-certificates
RUN apt install -y docker.io docker-compose
RUN apt install -y curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
  apt-get update -y && apt-get install -y nodejs
RUN mkdir -p /root/git

# Gradle
### Enable if gradle is needed. java + gradle is about 800mb + in image size.
##RUN apt-get update -y && \
##  apt-get install -y openjdk-11-jdk
##RUN wget https://services.gradle.org/distributions/gradle-5.4-bin.zip -P /tmp && \
##  unzip -d /opt/gradle /tmp/gradle-*.zip
##ENV PATH="/opt/gradle/gradle-5.4/bin:${PATH}"

FROM ubuntu:19.04
COPY --from=build / /
