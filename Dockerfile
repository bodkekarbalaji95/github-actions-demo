# Base image with Java 17
FROM eclipse-temurin:17-jdk-jammy

# Create working directory inside container
WORKDIR /app

# Copy JAR into container
COPY target/*.jar app.jar

# Command to run the app
ENTRYPOINT ["java","-jar","/app/app.jar"]