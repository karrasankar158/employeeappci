#Base Image with OpenJDK21
FROM openjdk:21-jdk-slim

#Set the Application Directory
WORKDIR /app

#Copy the Application JAR
COPY target/*.jar student-app.jar

#Expose Application port
EXPOSE 8080

#Execution the application
ENTRYPOINT ["java","-jar","student-app.jar"]