FROM ubuntu:precise

RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl sudo
RUN curl http://www.arangodb.org/repositories/arangodb/xUbuntu_12.04/Release.key | apt-key add -
RUN echo "deb http://www.arangodb.org/repositories/arangodb/xUbuntu_12.04/ /" >> /etc/apt/sources.list.d/arangodb.list
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y arangodb
