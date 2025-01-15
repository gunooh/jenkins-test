# Step 1: Use a base image with Java 17
FROM eclipse-temurin:17-jdk

# Step 2: Create a working directory in the container
WORKDIR /app

# Step 3: Copy the JAR file from the target directory into the container
ARG JAR_FILE=build/libs/jenkins-test-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Step 4: Expose port 8080 for the application
EXPOSE 8080

# Step 5: Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]