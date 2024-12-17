# Use an official OpenJDK image as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory to / (root directory inside the container)
WORKDIR /

# Copy the content of the repository into the container (root directory)
COPY . / 

# List files in the root directory to verify DiamondPattern.java is copied
RUN ls -l /

# Compile the Java program
RUN javac DiamondPattern.java

# Run the Java program
CMD ["java", "DiamondPattern"]
