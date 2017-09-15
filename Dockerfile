FROM ubuntu:16.04

COPY . /app

WORKDIR /app

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y vim

RUN bash tools/install_node.sh
RUN bash tools/install_ffmpeg.sh

RUN npm install
