FROM docker pull danriti/nginx-gunicorn-flask
MAINTAINER Chris Ryan <christopher.ryan@gmail.com>

RUN apt-get update

ADD git@github.com:acer123acer123/tyler.git /deploy/app
