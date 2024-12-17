# Use an official OpenJDK as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire content of the GitHub repository into the /app directory in the container
COPY . /app

# List files to verify DiamondPattern.java is in the right location
RUN ls -l /app

# Compile the Java program
RUN javac /app/DiamondPattern.java

# Run the Java program
CMD ["java", "-cp", "/app", "DiamondPattern"]
