FROM openjdk:17-jdk-slim-buster
COPY target/seventeen-0.0.1-SNAPSHOT.jar seventeen.jar
COPY start.sh /start.sh
ENTRYPOINT ["java","-jar","/seventeen.jar"]
EXPOSE 80
