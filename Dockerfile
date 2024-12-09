# Use an official OpenJDK runtime as a parent image (JRE is fine if you don't need to compile inside the container)
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled .class files from the local bin/ folder into the container
COPY bin/ /app

# Run the application using the .class file
CMD ["java", "Simple"]
