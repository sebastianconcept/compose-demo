# testing volume mount from the host

FROM ubuntu:latest

WORKDIR .

RUN mkdir /src
RUN mkdir /src/node_modules

RUN apt-get update
RUN apt-get install curl -y

COPY ./package.json /src/package.json
COPY ./package-lock.json /src/package-lock.json
