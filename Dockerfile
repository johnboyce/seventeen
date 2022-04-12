FROM openjdk:17-jdk-slim-buster
COPY target/seventeen*.jar seventeen-1.0.0.jar
ENTRYPOINT ["java","-jar","/seventeen-1.0.0.jar"]

