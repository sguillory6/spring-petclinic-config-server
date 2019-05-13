FROM openjdk:11.0.1-jre-slim

VOLUME /tmp

ARG BUILD_VERSION
ARG JAR_FILE

LABEL build_version="${BUILD_VERSION}" maintainer="Stanford S. Guillory <stanford_guillory@gmail.com>"

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


