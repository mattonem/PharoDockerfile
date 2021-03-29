FROM ubuntu:20.04

MAINTAINER mattone.m@gmail.com

RUN export DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
RUN apt-get update && apt-get install -y libgit2-dev build-essential wget libcanberra-gtk-module unzip git && \
    apt-get clean 
RUN sudo ln -s /usr/lib64/libcurl.so.4 /usr/lib64/libcurl-gnutls.so.4
RUN wget -O- get.pharo.org/64/80+vm | bash
