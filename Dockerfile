FROM ubuntu:xenial

RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl sudo
RUN curl https://www.arangodb.com/repositories/arangodb32/xUbuntu_16.04/Release.key | apt-key add -
RUN echo "deb https://www.arangodb.com/repositories/arangodb32/xUbuntu_16.04/ /" >> /etc/apt/sources.list.d/arangodb.list
RUN apt-get install -y apt-transport-https
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y arangodb3=3.2.2