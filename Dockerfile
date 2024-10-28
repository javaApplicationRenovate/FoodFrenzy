# Use a lightweight JDK image for running the application
FROM eclipse-temurin:21.0.5_11-jdk-alpine 
WORKDIR /app

# Copy the pre-built JAR file into the container
COPY target/FoodFrenzy-0.0.1-SNAPSHOT.jar /app/FoodFrenzy.jar

# Expose the application port
EXPOSE 8080

# Set the entry point for the application
ENTRYPOINT ["java", "-jar", "/app/FoodFrenzy.jar"]
