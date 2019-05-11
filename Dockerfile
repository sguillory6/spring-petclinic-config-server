FROM openjdk:11.0.1-jre-slim

VOLUME /tmp

ARG BUILD_VERSION
ARG JAR_FILE

LABEL build_version="${BUILD_VERSION}" maintainer="Stanford S. Guillory <stanford_guillory@gmail.com>"

ENV DOCKERIZE_VERSION v0.6.1

RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-linux-amd64-v0.6.1.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.6.1.tar.gz \
    && rm dockerize-linux-amd64-v0.6.1.tar.gz

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


