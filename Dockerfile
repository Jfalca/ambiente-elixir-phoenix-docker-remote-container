FROM elixir:1.10-alpine

RUN apk add --no-cache bash

RUN apk add --no-cache git

RUN mix local.hex --force && \
    mix archive.install hex phx_new 1.5.7 --force

RUN apk add --update nodejs

RUN apk add inotify-tools

WORKDIR /home/elixir/app