FROM openjdk:8-jdk-alpine
COPY  gs-spring-boot-docker-0.1.0.jar  my-app.jar
WORKDIR /
EXPOSE 8082
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
