# Use an official OpenJDK as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire content of the GitHub repository into the /app directory in the container
COPY DiamondPattern.java /app

# Compile the Java program
RUN javac DiamondPattern.java

# Run the Java program
CMD ["java", "DiamondPattern"]
