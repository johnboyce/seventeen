# Seventeen Springboot Application

This app is just a playground exploring:

- java 18
- Docker containers
- github actions

### Github Actions

### Docker

Create a Dockerfile with Java 17

```text
FROM openjdk:17-jdk-slim-buster
COPY target/seventeen*.jar seventeen-1.0.0.jar
ENTRYPOINT ["java","-jar","/seventeen-1.0.0.jar"]
```

To Build Docker container:

```shell
docker build --tag=seventeen:latest .
```

To run docker:

```shell
docker run -p8887:8888 seventeen:latest
```

The application is configured to run on port 8888 The application will be accessible on port 8887 After running, open
browser on http://localhost:8887/

