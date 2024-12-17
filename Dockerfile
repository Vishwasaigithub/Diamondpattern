# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# List the files to make sure DiamondPattern.java is copied
RUN ls -l

# Compile the Java program
RUN javac DiamondPattern.java

# Run the Java program
CMD ["java", "DiamondPattern"]
