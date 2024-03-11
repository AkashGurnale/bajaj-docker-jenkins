FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY target/bajaj-docker.jar .
EXPOSE 8080
CMD ["java", "-jar", "bajaj-docker.jar"]
