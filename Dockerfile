FROM ubuntu:xenial

RUN apt-get update && apt-get install -qqy ruby ruby-dev git libffi-dev build-essential libssl-dev

RUN gem install bundler

COPY . /kitchen-ec2

RUN cd /kitchen-ec2 && bundler install

WORKDIR /kitchen-ec2
