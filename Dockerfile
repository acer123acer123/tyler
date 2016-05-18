FROM danriti/nginx-gunicorn-flask
MAINTAINER Chris Ryan <christopher.ryan@gmail.com>

RUN apt-get update && apt-get install -y git && apt-get install -y iputils-ping

WORKDIR /deploy/app
RUN rm /deploy/app/*
RUN git clone https://github.com/acer123acer123/tyler.git /deploy/app && git checkout #version 1.0.9
