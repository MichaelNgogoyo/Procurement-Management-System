# Build stage
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Environment variables with defaults that can be overridden
ENV SPRING_DATASOURCE_URL=jdbc:postgresql://db:5432/ted
ENV SPRING_DATASOURCE_USERNAME=postgres
ENV SPRING_DATASOURCE_PASSWORD=password
ENV SERVER_PORT=8081
ENV AUTH_CLIENT_ID=client
ENV AUTH_CLIENT_SECRET=secret
ENV AUTH_TOKEN_URL=http://localhost:8081/oauth/token

EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"] 