FROM ubuntu:16.04

MAINTAINER mattone.m@gmail.com

RUN apt update && apt install -y wget libcanberra-gtk-module unzip 
RUN wget -O - http://download.opensuse.org/repositories/devel:/languages:/pharo:/stable/xUbuntu_16.04/Release.key | apt-key add - && \
    echo "deb http://download.opensuse.org/repositories/devel:/languages:/pharo:/stable/xUbuntu_16.04/ ./" > /etc/apt/sources.list.d/pharo.list && \
    apt update && apt install -y libgit2-dev pharo7-64-ui build-essential  && \
    apt-get clean 
RUN wget -O- get.pharo.org/70/61+vm | bash
