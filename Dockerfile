FROM ubuntu:16.04

MAINTAINER mattone.m@gmail.com

RUN apt update && apt install -y libgit2-dev build-essential wget libcanberra-gtk-module unzip && \
    apt-get clean 
RUN wget -O- get.pharo.org/64/70+vm | bash
