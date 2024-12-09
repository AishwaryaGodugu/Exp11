# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java code (optional if it's already compiled in Eclipse)
RUN javac Simple.class

# Run the application
CMD ["java", "Simple"]
