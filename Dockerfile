FROM ubuntu:20.04

MAINTAINER recrudesce <recrudesce@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-8
ENV VAR 0.3.6

RUN apt-get --yes update; apt-get --yes upgrade; apt-get --yes install software-properties-common apt-utils
RUN apt-get install -y sudo
RUN apt-get install -y wget
RUN apt-get install -y openjdk-8-jre
ADD    ./start.sh /start.sh
RUN    chmod +x start.sh

WORKDIR /bot
VOLUME /bot

CMD mv /start.sh /bot/start.sh
CMD ./start.sh
