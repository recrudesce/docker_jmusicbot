FROM ubuntu:16.04

MAINTAINER cocomine <roguish.6888467468@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-8
ENV VAR 0.2.7

RUN apt-get --yes update; apt-get --yes upgrade; apt-get --yes install software-properties-common
RUN apt-get install -y sudo
RUN apt-get install -y wget
RUN apt-get install -y openjdk-8-jre
#RUN sudo apt-add-repository --yes ppa:webupd8team/java; apt-get --yes update
#RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  && \
#    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections  && \
#	apt-get --yes install curl oracle-java8-installer ; apt-get clean
#RUN wget -P/bot https://github.com/jagrosh/MusicBot/releases/download/0.2.7/JMusicBot-0.2.7-All.jar

ADD    ./start.sh /start.sh
ADD	   ./config.txt config.txt
RUN    chmod +x start.sh

WORKDIR /bot
VOLUME /bot

CMD cd /; mv ./config.txt /bot/config.txt;  ./start.sh
