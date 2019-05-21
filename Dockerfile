FROM openjdk:11.0.1-jre-slim

VOLUME /tmp

COPY build/libs/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-jar", "app.jar"]



