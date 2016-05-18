FROM danriti/nginx-gunicorn-flask
MAINTAINER Chris Ryan <christopher.ryan@gmail.com>

RUN apt-get update && apt-get install -y git

WORKDIR /deploy/app
RUN git clone https://github.com/acer123acer123/tyler.git /deploy/app && git checkout 
