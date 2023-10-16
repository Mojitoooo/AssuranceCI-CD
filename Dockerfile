# Uses an official OpenJDK 17 as the base image
FROM openjdk:17-jdk

# Set the working directory
WORKDIR /var/lib/jenkins/workspace/VMTesting


# Install Maven
RUN RUN yum update -y && yum install -y maven

# Copy your project files into the container
COPY . ${WORKSPACE}

# Build your project
RUN mvn clean install

# Define the command to run your project (modify this to match your project's startup command)
CMD ["java", "-jar", "your-application.jar"]