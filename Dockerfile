FROM ruby:3.3.4

RUN gem install jekyll -v '3.10.0'

WORKDIR /usr/src/app
