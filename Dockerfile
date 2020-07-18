FROM debian:latest

ENV CALIBRE_HOME="/home/calibre"

RUN apt update \
    && apt upgrade -y \
    && apt install calibre -y \
    && useradd -ms /bin/bash -d ${CALIBRE_HOME} calibre

USER calibre
WORKDIR ${CALIBRE_HOME}
